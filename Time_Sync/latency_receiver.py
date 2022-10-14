from socket import socket, gethostbyname, AF_INET, SOCK_DGRAM
from datetime import datetime

PORT_NUMBER = 5005
SIZE = 1024

hostName = gethostbyname( '10.1.0.100' )

mySocket = socket( AF_INET, SOCK_DGRAM )
mySocket.bind( (hostName, PORT_NUMBER) )

print ("Test server listening on port {0}\n".format(PORT_NUMBER))
i = 0
while(i < 9):
    # Receive first timestamp from sender
    (timestamp_received_1,addr) = mySocket.recvfrom(SIZE)
    ts = datetime.now() # Make own timestamp
    timestamp_sender_1 = datetime.strptime(timestamp_received_1.decode(), '%Y-%m-%d %H:%M:%S.%f')


    # Receive second timestamp from sender
    (timestamp_received_2,addr) = mySocket.recvfrom(SIZE)
    ts2 = datetime.now() # Make second own timestamp
    timestamp_sender_2 = datetime.strptime(timestamp_received_2.decode(), '%Y-%m-%d %H:%M:%S.%f')

    ts_diff = ts2-ts # Difference between own timestamps to remove the time between sending timestamps from sender
    print("Sub", timestamp_sender_2-timestamp_sender_1)
    print("Dif", ts_diff)
    
    # Find latency by removing difference between sending timestamps from sender (ts_diff) and then
    # subtract second received timestamp from first received timestamp
    latency = (timestamp_sender_2 - timestamp_sender_1 - ts_diff)
    print("Lat", latency)
    i = i+1
