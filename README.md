# telemedicine_NPS

All the files required to process the data for the 

***You need the Load_matfile file in the present directory for most of the matlab code to work***

"A COMPARATIVE ANALYSIS ON USING LOW EARTH
ORBIT AND GEOSYNCHRONOUS ORBIT SATELLITE
COMMUNICATION SYSTEMS TO SUPPORT
TELEMEDICAL NETWORKS IN AUSTERE
EXPEDITIONARY ENVIRONMENTS"

Thesis are included here

The python file satcom_metric_test.py is used to determine packet loss, throughput, and jitter

The python file pcap_synthesis_final.py is used to process pcaps of applications to generate characteristic data

To run the python file use the steps below
1. install conda
2. https://docs.conda.io/projects/conda/en/latest/user-guide/install/linux.html
3. install python vesion 3.9.18
4. Install environment with the YML file
5. Full instructions: https://shandou.medium.com/export-and-create-conda-environment-with-yml-5de619fe5a2
6. conda env create -f telemed_env.yml
7. Activate your conda environment
8. conda activate pcaptool
9. Now just run the files!

To generate satellite communication metrics
1. Modify the variables below:
    SLEEP_TIME = 1 # 15 minutes                     --> This is the time in between tests
    target_host = "8.8.8.8"                         --> This is the ping target "google"
    count = 10                                      --> This is the number of pings
    interval = .1                                   --> This is the time in between pings in seconds
    total_runs = 10  # 24 times for 24 hours        --> This is the total number of tests to run (speed and ping) 
    speed_test_file = "speedtest_results_test.csv"  --> Speed test log file
    jitter_test_file = "jitter_results_test.csv"    --> ping test log file
2. Run the test
3. Add in an excel column to change the time to local, and then format the date and time per the word document example
4. Modify the variables in Jitter_Test_Display.m (run it out of your logs folder) to display the ping test data 
folder = 'C:\Users\victo\OneDrive\Desktop\NPS Classes\Theses Folder\project_test\satcom_jitter_logs'; % Replace with your folder path for GEO
leofolder = 'C:\Users\victo\OneDrive\Desktop\NPS Classes\Theses Folder\project_test\satcom_jitter_logs'; % Replace with your folder path for LEO
5. Modigy the variables in Speed_Test_Display.m (run it out of your logs folder) to display the speed test data
folder = 'C:\Users\victo\OneDrive\Desktop\NPS Classes\Theses Folder\project_test\satcom_speedtest_logs'; % Replace with your folder path for GEO
leofolder = 'C:\Users\victo\OneDrive\Desktop\NPS Classes\Theses Folder\project_test\satcom_speedtest_logs'; % Replace with your folder path LEO

To process PCAP files
1. Modify the variables in pcap_synthesis_final.py
    output_csv = 'output_test_now.csv'            --> this creates data rate and other information for each UDP/TCP "stream"
    jitter_csv = 'time_stamp_test_now.csv'        --> This is just time stamps for each "stream" to look at inter arrival time
    payload_csv = 'payload_test_now.csv'          --> This is payload size data for each "stream"
2. Run pcap_synthesis_final
3. Modify variable in inerarrival_teams.m
file_name = 'time_stamp_test_now.csv';         --> File path and file name from above
desiredLineNumber1 = 1;  % Example line number --> Line number for desired 'stream' 9 because we had 3 experiments for terrestrial / LEO / GEO
desiredLineNumber2 = 1;  % Example line number
desiredLineNumber3 = 1;  % Example line number
desiredLineNumber4 = 4;  % Example line number
desiredLineNumber5 = 4;  % Example line number
desiredLineNumber6 = 4;  % Example line number
desiredLineNumber7 = 4;  % Example line number
desiredLineNumber8 = 4;  % Example line number
desiredLineNumber9 = 4;  % Example line number
4. read_inerarrival_video_connect.m, read_payload_video_connect.m, ... ect all work the same way

To plot the data rates just run plot_in_out.m
make sure you set your file paths:
filepath1 = 'C:\Users\victo\OneDrive\Desktop\NPS Classes\Theses Folder\project_test\rate_test.csv'
filepath2 = 'C:\Users\victo\OneDrive\Desktop\NPS Classes\Theses Folder\project_test\rate_test.csv'
filepath3 = 'C:\Users\victo\OneDrive\Desktop\NPS Classes\Theses Folder\project_test\rate_test.csv'
filepath4 = 'C:\Users\victo\OneDrive\Desktop\NPS Classes\Theses Folder\project_test\rate_test.csv'
filepath5 = 'C:\Users\victo\OneDrive\Desktop\NPS Classes\Theses Folder\project_test\rate_test.csv'
filepath6 = 'C:\Users\victo\OneDrive\Desktop\NPS Classes\Theses Folder\project_test\rate_test.csv'
filepath7 = 'C:\Users\victo\OneDrive\Desktop\NPS Classes\Theses Folder\project_test\rate_test.csv'
filepath8 = 'C:\Users\victo\OneDrive\Desktop\NPS Classes\Theses Folder\project_test\rate_test.csv'
filepath9 = 'C:\Users\victo\OneDrive\Desktop\NPS Classes\Theses Folder\project_test\rate_test.csv'


