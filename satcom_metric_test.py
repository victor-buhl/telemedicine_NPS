import csv
import time
from datetime import datetime
from scapy.all import *
import statistics
import speedtest
import os

# Number of hours after which a new log file should be started
hours_interval = .1  # 72 hours (3 days)

log_path_jitter = "/home/victor/python_programming/satcom_jitter_logs/"
log_path_speed = "/home/victor/python_programming/satcom_speedtest_logs/"


def ping_and_measure_rtt(target, count, interval):
    rtts = []  # List to store all the RTTs
    no_reply_count = 0  # Counter for no reply instances
    
    for sequence_number in range(count):
        packet = IP(dst=target)/ICMP(seq=sequence_number)
        send_time = time.time()
        response = sr1(packet, verbose=0, timeout=2)
        
        if response is not None:
            received_time = time.time()
            rtt = received_time - send_time  # Round Trip Time
            rtts.append(rtt)
            print(f"Received reply from {target}: seq={sequence_number} time={rtt:.2f}s")
            
            time.sleep(interval)
        else:
            no_reply_count += 1  # Increment counter when no reply is received

            print(f"No reply from {target}: seq={sequence_number}")

    return rtts, no_reply_count

def log_results_to_csv(timestamp, mean_rtt, variance, std_deviation, filename, no_reply_cnt):
    if is_time_for_new_file(filename, "jitter"):
        log_file = create_new_log_file(filename, "jitter")
    else:
        # Find the most recent log file that starts with the base name
        log_files = sorted([f for f in os.listdir(log_path_jitter) if f.startswith(filename) and f.endswith(".csv")])
        if log_files:
            log_file = os.path.join(log_path_jitter, log_files[-1])
        else:
            # If no log file exists, create a new one
            log_file = create_new_log_file(filename, "jitter")
    
    with open(log_file, 'a', newline='') as csvfile:
        csvwriter = csv.writer(csvfile)
        # Write the headers if the file is empty
        if csvfile.tell() == 0:
            csvwriter.writerow(['Timestamp', 'Mean RTT', 'Variance', 'Standard Deviation', 'No Reply Count'])
        # Write the data
        csvwriter.writerow([timestamp, mean_rtt, variance, std_deviation, no_reply_cnt])
        
def test_internet_speed():
    st = speedtest.Speedtest()
    
    # Get download and upload speed
    download_speed = st.download()
    upload_speed = st.upload()
    
    # Convert speeds from bits per second to megabits per second
    download_speed_mbps = download_speed / (10**6)
    upload_speed_mbps = upload_speed / (10**6)
    
    print(f"Download Speed: {download_speed_mbps:.2f} Mbps")
    print(f"Upload Speed: {upload_speed_mbps:.2f} Mbps")

    return download_speed_mbps, upload_speed_mbps

def log_speedtest_results_to_csv(download_speed_mbps, upload_speed_mbps, filename):
    timestamp = time.time()  # Current time
    
    if is_time_for_new_file(filename, "speed" ):
        log_file = create_new_log_file(filename, "speed")
    else:
        # Find the most recent log file that starts with the base name
        log_files = sorted([f for f in os.listdir(log_path_speed) if f.startswith(filename) and f.endswith(".csv")])
        if log_files:
            log_file = os.path.join(log_path_speed, log_files[-1])
        else:
            # If no log file exists, create a new one
            log_file = create_new_log_file(filename, "speed")
    
    with open(log_file, 'a', newline='') as csvfile:
        csvwriter = csv.writer(csvfile)
        # Write the headers if the file is empty
        if csvfile.tell() == 0:
            csvwriter.writerow(['Timestamp', 'Download Speed (Mbps)', 'Upload Speed (Mbps)'])
        # Write the data
        csvwriter.writerow([timestamp, download_speed_mbps, upload_speed_mbps])

# Check if the last log file was created more than 'hours_interval' hours ago
def is_time_for_new_file(base_name, log_type):
    now = datetime.now()
    
    if log_type == "jitter":
        log_path = log_path_jitter
    elif log_type == "speed":
        log_path = log_path_speed
    
    log_files = [f for f in os.listdir(log_path) if f.startswith(base_name) and f.endswith(".csv")]
    log_files.sort(key=lambda x: os.path.getmtime(os.path.join(log_path, x)), reverse=True)

    
    if log_files:
        file = log_files[0]
        if file.startswith(base_name) and file.endswith(".csv"):
            file_date_str = file.replace(base_name + '_', '').replace('.csv', '')
            file_date = datetime.strptime(file_date_str, '%d%m%Y%H%M')
            print(file_date)
            print(now)
            print((now - file_date).total_seconds() / 3600)
            if (now - file_date).total_seconds() / 3600 >= hours_interval:
                return True
    return False

# Create a new log file with the current date and time
def create_new_log_file(base_name, log_type):
    if log_type == "jitter":
        log_path = log_path_jitter
    elif log_type == "speed":
        log_path = log_path_speed
        
    now_str = datetime.now().strftime('%d%m%Y%H%M')  # Date and time in ddmmyyyyHHMM format
    new_file_name = f"{base_name}_{now_str}.csv"
    new_file_path = os.path.join(log_path, new_file_name)
    return new_file_path

def main():
    SLEEP_TIME = 1 # 15 minutes
    target_host = "8.8.8.8"
    count = 10
    interval = .1
    total_runs = 10  # 24 times for 24 hours
    timestamp = time.strftime("%Y-%m-%d %H:%M:%S", time.gmtime())
    speed_test_file = "speedtest_results_test.csv"
    jitter_test_file = "jitter_results_test.csv"



    for _ in range(total_runs):
            # Perform the speed test
        
        try:
            download_speed_mbps, upload_speed_mbps = test_internet_speed()
            
            print('start at: ', timestamp)

            # Log the results to a CSV file
            log_speedtest_results_to_csv(download_speed_mbps, upload_speed_mbps, speed_test_file)

        except Exception as e:
            print(f"Speed test failed at {timestamp}. Error: {e}")
        

        rtt_measurements, no_reply_cnt = ping_and_measure_rtt(target_host, count, interval)
        timestamp = time.time() 
        
        if rtt_measurements:
            variance = statistics.variance(rtt_measurements)
            std_deviation = statistics.stdev(rtt_measurements)
            mean_rtt = statistics.mean(rtt_measurements)
            print(f"Timestamp: {timestamp}")
            print(f"RTT measurements: {rtt_measurements}")
            print(f"Variance: {variance:.4f}")
            print(f"Standard Deviation: {std_deviation:.4f}")

            # Log the results to a CSV file
            log_results_to_csv(timestamp, mean_rtt, variance, std_deviation, jitter_test_file, no_reply_cnt)
        else:
            print(f"No RTT measurements were collected at {timestamp}")

        # Wait for an hour before the next test'''
        time.sleep(SLEEP_TIME) 

if __name__ == "__main__":
    main()
