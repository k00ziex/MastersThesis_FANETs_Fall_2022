# README
This repository has been made during the semester of the Master Thesis of Simon Zacher Høholt Jensen and Andreas Vorgaard.
The following sections briefly elaborate what can be found in the different directories and what they might be used for.

**ANY USE OF THE REPOSITORY, DATA OR OTHER HEREIN IS SUBJECT TO REQUIRING PERMISSION FROM THE AUTHORS**

## Contact information of Authors: 
***Simon Zacher Høholt Jensen***
- Email: 201270698@post.au.dk
***Andreas Vorgaard***
- Email: 201705136@post.au.dk




# General information:
During the experiments two files are created and annotated with the corresponding distance or other important metric of the experiment.
- iperf_results_[metric].txt
    - This contains the information retrieved during runs of iPerf3, which has been primarily used for measuring throughput
- results_[metric].txt
    - This contains other metrics from the experiment such as average RTT (via Ping command), Meshmerize Link output, Meshmerize Route output and more.

*OBS:* Some folders contain folders named along the lines of *Old_data* or *New_data*. 
- *Old_data* is a folder annotation for previous measurements of an experiment if something has failed during experimentation or other, and so to not lose all the old data it was put into this folder in case it was interesting to look at later. However, this is out of scope for the Master Thesis.
- *New_data* is a folder annotation for the same scenario as above (but with newly taken data in the folder instead), but where it was easier to put the new data into a folder than to put the older data into a folder.


# Directory and file information:

<pre><code>
│   <i>constant_ping.sh:</i> Shell script for continuously pinging a host <b>NOT IMPORTANT FOR THESIS, WAS ONLY USED FOR INITIAL EXPERIMENTATION</b>
│   experiment_script.sh:</i> Shell script for obtaining things such as average RTT (via Ping command), Meshmerize Link metric, RSS values (via station dump command) and more for all experiments. <b>VERY IMPORTANT</b>
│   <i>find_ip.sh:</i> Shell script for finding IPs of Meshmerize devices after upgrading them with newer firmware <b>NOT IMPORTANT FOR THESIS, WAS ONLY USED FOR FINDING IPS AFTER UPGRADING FIRMWARE</b>
│   <i>iperf.sh:</i> Shell script for running iPerf3 via TCP connection to a given host a number of times. This was the script used for obtaining throughput between devices in the network and used for practically all experiments except the control experiment. <b>VERY IMPORTANT</b>
│   <i>iperf_results.txt:</i> Example output of what the iperf.sh script outputs
│   <i>iperf_udp.sh:</i> Shell script for running iPerf3 via UDP connection to a given host a number of times. Was used during the control experiment, which is in the 'Mesh Configuration V2' folder of this repository. <b>IMPORTANT</b>
│   <i>results.txt:</i> Example output of what the experiment_script.sh outputs
├───<b>Data_processing</b>
│       <i>Data_Visualization.ipynb:</i> contains the data visualization code for the Master Thesis. It is herein that the different graphs, plots, etc. have been made.
├───<b>Distance:</b> Contains the visualizations from the data retrieved in the experiments of the Master Thesis' section "Distance and Interference Characteristics" sub-scenarios 1 and 2 as well as the data itself.
│   ├───<b>Dongle</b>
│   │   ├───<b>Multi-hop:</b> Data for SS2 (GS1)
│   │   ├───<b>Multi-hop_interference:</b> Data for SS2 (GS2)
│   │   ├───<b>Single-hop:</b> Data for SS1 (GS1)
│   │   └───<b>Single-hop_interference:</b> Data for SS1 (GS2)
│   └───<b>Visualizations:</b> Contains the visualizations related to this experiment
├───<b>File_Transfer:</b> Contains python code for creating a file transfer between two hosts. <b>NOT IMPORTANT FOR THESIS, WAS ONLY USED FOR INITIAL EXPERIMENTATION</b>
├───<b>Mesh Configuration:</b> Contains visualizations and data related to the experiment conducted in the Master Thesis' section "Multihop and impact of interference".
│   ├───<b>Interference_1:</b> Contains the data related to Single-node interference
│   ├───<b>Interference_2:</b> Contains the data related to Multi-node interference
│   ├───<b>No Interference:</b> Contains the data related to the scenario of no interference being present
│   └───<b>Visualizations:</b> Contains the visualizations related to this experiment
├───<b>Mesh Configuration V2:</b> Contains visualizations and data related to the control experiment conducted in the Master Thesis' section "Control Experiment - UDP instead of TCP".
│   ├───<b>Interference_1:</b> Contains data related to Single-node interference
│   ├───<b>Interference_2:</b> Contains data related to Multi-node interference
│   ├───<b>No Interference:</b> Contains data related to the scenario of no interference being presented. Subfixed with "_1.txt" means it was the first day that was measured (compared to single-node interference), and subfixed with "_2.txt" was the second day (compared to multi-node interference).
│   └───<b>Visualizations:</b> Contains the visualizations related to this experiment
├───<b>Radio_Flows:</b> Contains images, gnu radio code as well as flowgraphs for the interference source used in the experiments. Requires Gnu Radio to be installed to see the setup. <b>VERY IMPORTANT</b>. Also includes spectrum analyzer code that was initially used for figuring out the radio.
├───<b>Spectrum_Analysis:</b> Contains images of spectrum analysis of the Software Defined Radio (interference source) USRP-2922. Also contains the QT GUI output of the USRP-2922. <b>Important</b>
├───<b>TCP:</b> Contains python code for creating a TCP connection between two hosts. <b>NOT IMPORTANT FOR THESIS, WAS ONLY USED FOR INITIAL EXPERIMENTATION</b>
├───<b>Time_Sync:</b> Contains python code for attempting to create time synchronization between nodes to measure the latency each way instead of getting the RTT. Not used in any experiments since it was not functional. <b>NOT IMPORTANT</b>
├───<b>Transmission Power:</b> Contains visualizations and data retrieved from the experiments of the Master Thesis' section "Distance And Interference Characteristics" sub-scenario 3
│   └───<b>Dongle</b>
│       ├───<b>Single-hop:</b> Data for SS3 (GS1)
│       ├───<b>Single-hop_interference:</b> Data for SS3 (GS2)
│       └───<b>Visualizations:</b> Contains visualizations related to this experiment
└───<b>UDP:</b> Contains python code for communicating via UDP between two hosts. <b>NOT INCLUDED IN THESIS, BUT WAS THE ORIGINAL ATTEMPT OF CREATING INTERFERENCE</b>
</code></pre>
