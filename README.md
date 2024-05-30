# telemedicine_NPS

All the files required to process the data for the 

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


