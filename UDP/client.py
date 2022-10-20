import sys
from socket import socket, AF_INET, SOCK_DGRAM
from time import sleep

message_size = 65507
SERVER_IP   = '10.1.0.4'
PORT_NUMBER = 5005
print ("Test client sending packets to IP {0}, via port {1}\n".format(SERVER_IP, PORT_NUMBER))

mySocket = socket( AF_INET, SOCK_DGRAM )

max_msg = message_size*'A'
while True:
    print("Sending...")
    mySocket.sendto(max_msg.encode(),(SERVER_IP,PORT_NUMBER))
    print("Done sending...")
