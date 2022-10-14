for((i=0;i<=256;++i)) 
do
   	ping_output="$(ssh root@10.1.0.$i)"
	echo $ping_output
done


