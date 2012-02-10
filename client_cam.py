#!/usr/bin/python

from socket import *
import sys
from time import sleep

sendComd1=sys.argv[3]
#sendComd2=sys.argv[4]
Targetport=sys.argv[2]
cameraHost =sys.argv[1]
serverPort=int(Targetport)
s=socket(AF_INET,SOCK_STREAM)
s.connect((cameraHost,serverPort))
try:
	s.send(sendComd1)
#	data=s.recv(3072)
#	while(len(data)<=1):
#		sleep(0.4)
#		data=s.recv(3072)
#	print data
	s.close()
	exit()
except:
	s.close()
	exit()

