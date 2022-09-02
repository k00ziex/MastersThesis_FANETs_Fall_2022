while true
	do
	 ping_output="$(ping -c $1 $2)"
	 echo $ping_output
	 sleep 1

done

