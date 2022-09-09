import socket
import os

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind(("10.1.0.100", 5005)) 

s.listen(10)
c, addr = s.accept()
print('{} connected.'.format(addr))

f = open("image.jpg", "rb")
l = os.path.getsize("image.jpg")
m = f.read(l)
c.sendall(m)
f.close()
print("Done sending...")