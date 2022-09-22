# $1 = Do we want to output to file?
# $2 = Do we want ping information?
# $3 = Do we want Goodput/Throughput?
# $4 = Do we want RSSI?
# $5 = Do we want latency?
# $6 = Do we want Meshmerize commands?

echo "____________________________START_______________________________" > /root/logfiles/results.txt

i=0
############## RTT ####################
# $7 = ip of destination
# $8 = number of packets in ping command

if [ $2 == 'true' ]
then
    ping_output="$(ping -c $8 $7)"

    if [ $1 == 'true' ]
    then
        echo $ping_output >> /root/logfiles/results.txt
    else
        echo $ping_output
    fi
fi
echo "________________________________________________________________" >> /root/logfiles/results.txt

############## Throughput/Goodput ####################
# $8 = ip of server host

if [ $3 == 'true' ]
then
    if [ $1 == 'true' ]
    then
        throughput_output="$(iperf3 -c $7 -t 10 --get-server-output --logfile /root/logfiles/iperf_results.txt)"
        echo "SEE iperf_results.txt FOR OUTPUT" >> /root/logfiles/results.txt
    else
        throughput_output="$(iperf3 -c $7 -t 10 --get-server-output)"
        echo $throughput_output
    fi
fi
echo "________________________________________________________________" >> /root/logfiles/results.txt

############## RSSI ####################
if [ $4 == 'true' ]
then
    while [ $i -lt $9 ]
    do
        rssi_output="$(iw wlan0 station dump)"

        if [ $1 == 'true' ]
        then
            echo $rssi_output >> /root/logfiles/results.txt
        else
            echo $rssi_output
        fi
        i=$(($i+1))
        sleep 1
    done
    i=0
fi
echo "________________________________________________________________" >> /root/logfiles/results.txt

############## Latency ####################
if [ $5 == 'true' ]
then
    # Do UDP stuff here? While loop here?
    latency_output=1

    if [ $1 == 'true' ]
    then
        echo $latency_output >> /root/logfiles/results.txt
    else
        echo $latency_output
    fi
fi
echo "________________________________________________________________" >> /root/logfiles/results.txt

############## Meshmerize Originator ####################
if [ $6 == 'true' ]
then
    while [ $i -lt $9 ]
    do
        originator_output="$(meshmerize originator)"
        
        if [ $1 == 'true' ]
        then
            echo $originator_output >> /root/logfiles/results.txt
        else
            echo $originator_output
        fi
        i=$(($i+1))
        sleep 1
    done
    i=0
fi
echo "________________________________________________________________" >> /root/logfiles/results.txt

############## Meshmerize Neighbor ####################
if [ $6 == 'true' ]
then
    while [ $i -lt $9 ]
    do
        neighbor_output="$(meshmerize neighbor)"

        if [ $1 == 'true' ]
        then
            echo $neighbor_output >> /root/logfiles/results.txt
        else
            echo $neighbor_output
        fi
        i=$(($i+1))
        sleep 1
    done
    i=0
fi
echo "___________________________END__________________________________" >> /root/logfiles/results.txt