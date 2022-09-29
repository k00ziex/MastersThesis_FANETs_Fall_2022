import sys
from socket import socket, AF_INET, SOCK_DGRAM
from time import sleep
from datetime import datetime

SERVER_IP   = '10.1.0.100'
PORT_NUMBER = 5005


mySocket = socket( AF_INET, SOCK_DGRAM )
counter = 0
while counter < 20:
    current_time = str(datetime.now())
    print(current_time.encode())
    mySocket.sendto(current_time.encode(),(SERVER_IP,PORT_NUMBER))

    counter += 1
    sleep(2)