import sys
from socket import socket, AF_INET, SOCK_DGRAM
from time import sleep

SERVER_IP   = '10.1.0.25'
PORT_NUMBER = 5005
print ("Test client sending packets to IP {0}, via port {1}\n".format(SERVER_IP, PORT_NUMBER))

mySocket = socket( AF_INET, SOCK_DGRAM )

while True:
    sleep(3)
    mySocket.sendto('Hello There'.encode(),(SERVER_IP,PORT_NUMBER))
