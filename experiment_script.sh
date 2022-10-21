# $1 = Do we want to output to file?
# $2 = Do we want ping information?
# $3 = Do we want RSSI?
# $4 = Do we want Meshmerize commands?

echo "____________________________START_______________________________" > /root/logfiles/results.txt

interval=0
############## RTT ####################
# $5 = ip of destination
# $6 = number of packets in ping command
while [ $interval -lt $7 ]
do
    if [ $2 == 'true' ]
    then
        ping_output="$(ping -c $6 $5)"

        if [ $1 == 'true' ]
        then
            echo $ping_output >> /root/logfiles/results.txt
        else
            echo $ping_output
        fi
    fi
    echo "----------------------------------------------------------------" >> /root/logfiles/results.txt

    ############## RSSI ####################
    if [ $3 == 'true' ]
    then
        rssi_output="$(iw wlan0 station dump)"

        if [ $1 == 'true' ]
        then
            echo $rssi_output >> /root/logfiles/results.txt
        else
            echo $rssi_output
        fi
    fi
    echo "----------------------------------------------------------------" >> /root/logfiles/results.txt

    ############## Meshmerize Originator ####################
    if [ $4 == 'true' ]
    then
        originator_output="$(meshmerize route)"
            
        if [ $1 == 'true' ]
        then
            echo $originator_output >> /root/logfiles/results.txt
        else
            echo $originator_output
        fi
    fi
    echo "----------------------------------------------------------------" >> /root/logfiles/results.txt

    ############## Meshmerize Neighbor ####################
    if [ $4 == 'true' ]
    then
        neighbor_output="$(meshmerize link)"

        if [ $1 == 'true' ]
        then
            echo $neighbor_output >> /root/logfiles/results.txt
        else
            echo $neighbor_output
        fi
    fi
    echo "___________________________END__________________________________" >> /root/logfiles/results.txt
    interval=$(($interval+1))
    sleep 1
done