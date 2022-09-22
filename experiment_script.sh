# $1 = Do we want ping information?
# $2 = Do we want Goodput/Throughput?
# $3 = Do we want RSSI?
# $4 = Do we want latency?
# $5 = Do we want Meshmerize commands?

path = "$(/root/logfiles/experiment_results.txt)"

if [ ! -d "$path" ]
then
    echo "File doesn't exist. Creating now"
    mkdir $path
    echo "File created"
else
    echo "File exists"
fi

############## RTT ####################
# $6 = number of packets in ping command
# $7 = ip of destination

if [ $1 == 'true' ]
then
    ping_output="$(ping -c $6 $7)"
    echo $ping_output
fi

############## Throughput/Goodput ####################
# $8 = ip of server host

if [ $2 == 'true' ]
then
    # Do iperf3 here
    throughput_output="$(iperf3 -c $8 --get-server-ouput)"
    echo $throughput_output
fi

############## RSSI ####################
if [ $3 == 'true' ]
then
    rssi_output="$(iw wlan0 station dump)"
    echo $rssi_output
fi

############## Latency ####################
if [ $4 == 'true' ]
then
    # Do UDP stuff here?
    latency_output=1
    echo $latency_output
fi

############## Meshmerize Originator ####################
if [ $5 == 'true' ]
then
    originator_output="$(meshmerize originator)"
    echo $originator_output
fi

############## Meshmerize Neighbor ####################
if [ $5 == 'true' ]
then
    neighbor_output="$(meshmerize neighbor)"
    echo $neighbor_output
fi