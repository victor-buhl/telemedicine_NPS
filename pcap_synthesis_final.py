import os
from collections import Counter
import scapy
from scapy.all import rdpcap
import csv
from pprint import pprint
from datetime import datetime
import scipy.io
from ipaddress import ip_address
import ipaddress


COUNT_IND = 0
LAYER4 = 1
TIME_STAMP = 2
PCK_LEN = 3
SEQ_NUM = 4
ACK_NUM = 5
RND_TRIP_TIME = 6
RND_TRIP_TIME_STAMP = 7
STREAM_TOTAL_TIME = 8
STREAM_TOTAL_DATA = 9
DATA_RATE = 10
# Use the time between packets as the inter-arrival time for each stream
# Use round trip latency for TCP streams
# Use the total payload and the first and last time stamp for the bandwidth calculation

SRC_IP = 0
DST_IP = 1
SRC_PORT = 2
DST_PORT = 3

HEADER_NUM = 150


def process_pcap(pcap_file, file_name):
    try:
        packets = rdpcap(pcap_file)
    except scapy.error.Scapy_Exception as e:
        print(f"Error reading file {pcap_file}: {e}")
        packets = []
    # Dictionary to store counts for each socket pair
    socket_pair_diction = {}

    for packet in packets:
        # Check if the packet involves the two specified IP addresses
        #if 'IP' in packet and (packet['IP'].src in [ip1, ip2] and pac  ket['IP'].dst in [ip1, ip2]):
        if 'IP' in packet:
            # For TCP packets
            if 'TCP' in packet:
                socket_pair = (packet['IP'].src, packet['IP'].dst, packet['TCP'].sport, packet['TCP'].dport, 'tcp',file_name)
                socket_pair_info = socket_pair_diction.get(socket_pair, [0, 0, [0], [0], [0], [0], [0], [0], 0, 0, 0]) # count, layer4, time, length, seq, ack, rnd_trip_time, stream_total_time, stream_total_data, data_rate
                socket_pair_info[LAYER4] = 'TCP'
                count_ind = socket_pair_info[COUNT_IND]
                socket_pair_info[COUNT_IND] += 1
                if count_ind < 1:
                    socket_pair_info[TIME_STAMP][count_ind] = packet.time             
                    socket_pair_info[SEQ_NUM][count_ind] = packet['TCP'].seq 
                    socket_pair_info[ACK_NUM][count_ind] = packet['TCP'].ack       
                    socket_pair_info[PCK_LEN][count_ind] = len(packet['TCP'].payload)
                elif count_ind >= 1:
                    socket_pair_info[TIME_STAMP].append(packet.time)
                    socket_pair_info[SEQ_NUM].append(packet['TCP'].seq)
                    socket_pair_info[ACK_NUM].append(packet['TCP'].ack)
                    socket_pair_info[PCK_LEN].append(len(packet['TCP'].payload))
                      
                socket_pair_diction[socket_pair] = socket_pair_info

            # For UDP packets
            elif 'UDP' in packet:
                socket_pair = (packet['IP'].src, packet['IP'].dst, packet['UDP'].sport, packet['UDP'].dport, 'udp',file_name)
                #socket_pair_counts[socket_pair] = socket_pair_counts.get(socket_pair, 0) + 1
                socket_pair_info = socket_pair_diction.get(socket_pair, [0, 0, [0], [0], [0], [0], [0], [0], 0, 0, 0]) # count, layer4, time, length, seq, ack, rnd_trip_time, stream_total_time, stream_total_data, data_rate
                socket_pair_info[LAYER4] = 'UDP'
                count_ind = socket_pair_info[COUNT_IND]
                socket_pair_info[COUNT_IND] += 1
                if count_ind < 1:
                    socket_pair_info[TIME_STAMP][count_ind] = packet.time  
                    socket_pair_info[PCK_LEN][count_ind] = len(packet['UDP'].payload)   
                elif count_ind >= 1:
                    socket_pair_info[TIME_STAMP].append(packet.time)
                    socket_pair_info[PCK_LEN].append(len(packet['UDP'].payload))
                    
                socket_pair_diction[socket_pair] = socket_pair_info

    pprint("done with one file")
    return socket_pair_diction



    
        
def stream_time(socket_pair_diction_CA, file_name):
    for socket_pair, socket_pair_info in socket_pair_diction_CA.items():
        if socket_pair[5] != file_name:
            continue
        else:
            last_time = socket_pair_info[TIME_STAMP][-1]
            first_time = socket_pair_info[TIME_STAMP][0]
            socket_pair_info[STREAM_TOTAL_TIME] = last_time - first_time
            for length in socket_pair_info[PCK_LEN]:
                socket_pair_info[STREAM_TOTAL_DATA] += length
            if socket_pair_info[STREAM_TOTAL_TIME] != 0:
                socket_pair_info[DATA_RATE] = socket_pair_info[STREAM_TOTAL_DATA] / socket_pair_info[STREAM_TOTAL_TIME]
            else:
                socket_pair_info[DATA_RATE] = 0  # or default value 
            socket_pair_diction_CA[socket_pair] = socket_pair_info
    return socket_pair_diction_CA
           

def main():
    #socket_pair_diction = {}
    print("PCAP processing running...")
    output_csv = 'output_test_now.csv'
    jitter_csv = 'time_stamp_test_now.csv'
    payload_csv = 'payload_test_now.csv'
  #  round_trip_csv = 'round_trip_Day1.csv'
    socket_pair_diction_CA = {}
   # folder_path_CA = "/media/victor/Seagate Backup Plus Drive/PCAP/pcap CA/pcap CA/DAY 2"
    folder_path_CA = "/media/victor/Seagate Backup Plus Drive/PCAP/pcap CA/pcap CA/Test"
    
    
    for filename in os.listdir(folder_path_CA):  # Assuming you're looping through files
        try:
            if filename.endswith(".pcapng"):
                socket_pair_diction_CA.update(process_pcap(os.path.join(folder_path_CA, filename), filename))
                socket_pair_diction_CA.update(stream_time(socket_pair_diction_CA, filename))
        except scapy.error.Scapy_Exception as e:
            print(f"Error reading file {filename}: {e}")
            continue  # This skips to the next iteration of the loop  
    
    with open(output_csv, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(["socket_pair", "Layer 4", "Total stream time", "Total stream data", "Data_rate"])
        for socket_pair, socket_pair_info in socket_pair_diction_CA.items():
            writer.writerow([socket_pair] + [socket_pair_info[LAYER4]] + [socket_pair_info[STREAM_TOTAL_TIME]] + [socket_pair_info[STREAM_TOTAL_DATA]] + [socket_pair_info[DATA_RATE]])      

    with open(jitter_csv, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)        
        # Write the data
        headers = list(socket_pair_diction_CA.keys())
        #writer.writerow(headers)
        # Find the maximum length of socket_pair_info lists to determine the number of rows
        max_rows = 0
        for header in headers:
            value = socket_pair_diction_CA[header]
            if len(value[TIME_STAMP]) > max_rows:
                max_rows = len(value[TIME_STAMP])
                
        # 1. Get headers and their lengths.
        lengths = [(header, len(socket_pair_diction_CA[header][TIME_STAMP])) for header in headers]
        
        # 2. Sort by length in descending order.
        sorted_lengths = sorted(lengths, key=lambda x: x[1], reverse=True)
        
        # 3. Retrieve top headers.
        top_headers = [item[0] for item in sorted_lengths[:HEADER_NUM]]
        
        # Transpose data for CSV
        for header in top_headers:
            if socket_pair_diction_CA[header][TIME_STAMP] == [0]:
                continue
            else:
                row = []
                row.append(header)
                for i in range(max_rows):
                    if i+1 < (len(socket_pair_diction_CA[header][TIME_STAMP])):
                        row.append(socket_pair_diction_CA[header][TIME_STAMP][i])
                writer.writerow(row) 
           
    with open(payload_csv, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)        
        # Write the data
        headers = list(socket_pair_diction_CA.keys())
        #writer.writerow(headers)
        # Find the maximum length of socket_pair_info lists to determine the number of rows
        max_rows = 0
        for header in headers:
            value = socket_pair_diction_CA[header]
            if len(value[TIME_STAMP]) > max_rows:
                max_rows = len(value[TIME_STAMP])
                
        # 1. Get headers and their lengths.
        lengths = [(header, len(socket_pair_diction_CA[header][TIME_STAMP])) for header in headers]
        
        # 2. Sort by length in descending order.
        sorted_lengths = sorted(lengths, key=lambda x: x[1], reverse=True)
        
        # 3. Retrieve top headers.
        top_headers = [item[0] for item in sorted_lengths[:HEADER_NUM]]
        
        # Transpose data for CSV
        for header in top_headers:
            if socket_pair_diction_CA[header][PCK_LEN] == [0]:
                continue
            else:
                row = []
                row.append(header)
                for i in range(max_rows):
                    if i+1 < (len(socket_pair_diction_CA[header][PCK_LEN])):
                        row.append(socket_pair_diction_CA[header][PCK_LEN][i])
                writer.writerow(row) 
        
 
                
    print(f"Results saved to {payload_csv}")

if __name__ == '__main__':
    main()


                