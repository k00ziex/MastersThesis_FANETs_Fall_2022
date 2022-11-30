############## Throughput/Goodput ####################
# $1 = IP of client
# $2 = Number of measurements

interval=0

while [ $interval -lt $2 ]
do
    throughput_output="$(iperf3 -c $1 -t 10 --get-server-output --logfile /root/logfiles/iperf_results.txt -u -b 0)"
    interval=$(($interval+1))
    sleep 10
done

