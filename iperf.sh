############## Throughput/Goodput ####################
# $1 = IP of client
# $2 = Number of measurements

interval=0

while [ $interval -lt $2 ]
do
    throughput_output="$(iperf3 -c $1 -t 10 --get-server-output --logfile /root/logfiles/iperf_results.txt)"
    echo "SEE iperf_results.txt FOR OUTPUT" >> /root/logfiles/results.txt
    interval=$(($interval+1))
    sleep 10
done

