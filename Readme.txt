This repository has been made during the semester of the Master Thesis of Simon Zacher Høholt Jensen and Andreas Vorgaard.
The following sections briefly elaborate what can be found in the different directories and what they might be used for.

* ANY USE OF THE REPOSITORY, DATA OR OTHER HEREIN IS SUBJECT TO REQUIRING PERMISSION FROM THE AUTHORS *

* Contact information of Authors: *
* Simon Zacher Høholt Jensen *
- Email: 201270698@post.au.dk
* Andreas Vorgaard *
- Email: 201705136@post.au.dk




General information:
During the experiments two files are created and annotated with the corresponding distance or other important metric of the experiment.
- iperf_results_[metric].txt
    - This contains the information retrieved during runs of iPerf3, which has been primarily used for measuring throughput
- results_[metric].txt
    - This contains other metrics from the experiment such as average RTT (via Ping command), Meshmerize Link output, Meshmerize Route output and more.


*Directory information:*

- Data_processing
        - Data_Visualization.ipynb contains the data visualization code for the Master Thesis. It is herein that the different graphs, plots, etc. have been made.
- Distance --> Contains the visualizations from the data retrieved in the experiments of the Master Thesis' section "Distance and Interference Characteristics" sub-scenarios 1 and 2 as well as the data itself.
        - Dongle
            - Multi-hop --> Data for SS2 (GS1)
            - Multi-hop_interference --> Data for SS2 (GS2)
            - Single-hop --> Data for SS1 (GS1)
            - Single-hop_interference --> Data for SS2 (GS2)
        - Visualizations --> Contains the visualizations related to this experiment
- File_Transfer --> Contains python code for creating a file transfer between two hosts. *NOT IMPORTANT FOR THESIS, WAS ONLY USED FOR INITIAL EXPERIMENTATION*
- Mesh Configuration --> Contains visualizations and data related to the experiment conducted in the Master Thesis' section "Multihop and impact of interference".
        - Interference_1 --> Contains the data related to Single-node interference
        - Interference_2 --> Contains the data related to Multi-node interference
        - No Interference --> Contains the data related to the scenario of no interference being present
        - Visualizations --> Contains the visualizations related to this experiment
- Mesh Configuration V2 --> Contains visualizations and data related to the control experiment conducted in the Master Thesis' section "Control Experiment - UDP instead of TCP".
        - Interference_1 --> Contains data related to Single-node interference
        - Interference_2 --> Contains data related to Multi-node interference
        - No Interference --> Contains data related to the scenario of no interference being presented. Subfixed with "_1.txt" means it was the first day that was measured (compared to single-node interference), and subfixed with "_2.txt" was the second day (compared to multi-node interference).
        - Visualizations --> Contains the visualizations related to this experiment
- Spectrum_Analysis
    --> Contains images of spectrum analysis of the Software Defined Radio (interference source) USRP-2922. Also contains the QT GUI output of the USRP-2922. *Important*
- Radio_Flows
    --> Contains images, gnu radio code as well as flowgraphs for the interference source used in the experiments. Requires Gnu Radio to be installed to see the setup. *VERY IMPORTANT*. Also includes spectrum analyzer code that was initially used for figuring out the radio.
- TCP 
    --> Contains python code for creating a TCP connection between two hosts. *NOT IMPORTANT FOR THESIS, WAS ONLY USED FOR INITIAL EXPERIMENTATION*
- Time_Sync
    --> Contains python code for attempting to create time synchronization between nodes to measure the latency each way instead of getting the RTT. Not used in any experiments since it was not functional. *NOT IMPORTANT*
- Transmission Power --> Contains visualizations and data retrieved from the experiments of the Master Thesis' section "Distance And Interference Characteristics" sub-scenario 3
        - Dongle
            - Single-hop --> Data for SS3 (GS1)
            - Single-hop_interference --> Data for SS3 (GS2)
            - Visualizations --> Contains visualizations related to this experiment
- UDP 
    --> Contains python code for communicating via UDP between two hosts. *NOT INCLUDED IN THESIS, BUT WAS THE ORIGINAL ATTEMPT OF CREATING INTERFERENCE*
- constant_ping.sh 
        --> Shell script for continuously pinging a host *NOT IMPORTANT FOR THESIS, WAS ONLY USED FOR INITIAL EXPERIMENTATION*
- experiment_script.sh 
        --> Shell script for obtaining things such as average RTT (via Ping command), Meshmerize Link metric, RSS values (via station dump command) and more for all experiments. *VERY IMPORTANT*
- find_ip.sh 
        --> Shell script for finding IPs of Meshmerize devices after upgrading them with newer firmware *NOT IMPORTANT FOR THESIS, WAS ONLY USED FOR FINDING IPS AFTER UPGRADING FIRMWARE*
- iperf_udp.sh 
        --> Shell script for running iPerf3 via UDP connection to a given host a number of times. Was used during the control experiment, which is in the 'Mesh Configuration V2' folder of this repository. *IMPORTANT*
- iperf.sh 
        --> Shell script for running iPerf3 via TCP connection to a given host a number of times. This was the script used for obtaining throughput between devices in the network and used for practically all experiments except the control experiment. *VERY IMPORTANT*
- iperf_results.txt 
        --> Example output of what the iperf.sh script outputs
- results.txt 
        --> Example output of what the experiment_script.sh outputs
