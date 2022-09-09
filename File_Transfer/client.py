import socket

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(("10.1.0.100", 5005))

f = open("recieved.jpg", "wb")
data = None
while True:
    m = s.recv(1024)
    data = m
    if m:
        while m:
            m = s.recv(1024)
            data += m
        else:
            break
f.write(data)
f.close()
print("Done receiving")