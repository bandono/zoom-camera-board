#!/usr/bin/python

# version : 3.0
# usage `server.py <listen port> <serial device>`
# e.g. `server.py 3789 /dev/ttyS2`
# 1. listen & try to receive socket for command "B" (zoom in) & "A" (zoom out)
# 2. send the VISCA command via RS232 in the sequence of:
#    zoom in/out command -> 3 seconds delay -> zoom stop command
# 3. in the socket layer, it will not send anything back. `client_cam.py`
# 4. will close the socket once something received while listening


from socket import *
import sys
import serial
from threading import Thread
import Queue
from time import sleep
            
myPort=int(sys.argv[1])
modname=sys.argv[2]
myQueue=Queue.Queue()

ifcam=serial.Serial(modname,9600,8,parity='N',timeout=1)
s = socket(AF_INET,SOCK_STREAM)
myHost=''
stopZoom = (chr(0x81)+chr(0x01)+chr(0x04)+chr(0x07)+chr(0x00)+chr(0xFF))

while 1:
    print "try port "+str(myPort)
    try:
        s.bind((myHost,myPort))
        print "Server on "+str(myPort)+", ready to serv!"
        break
    except:
        print "port "+str(myPort)+" used by another process!"
        myPort=myPort+1

#---start server listener
s.listen(20)
while 1:
    try:
        clientSocket,address =s.accept()
        data = clientSocket.recv(1024)
        print "Receive command:"+data
        clientSocket.close()	


        if data == "B":
			serialDat=(chr(0x81)+chr(0x01)+chr(0x04)+chr(0x07)+chr(0x02)+chr(0xFF))
			ifcam.write(serialDat)
			print data			
			sleep(3)
			ifcam.write(stopZoom)			
        elif data == "A":
			serialDat=(chr(0x81)+chr(0x01)+chr(0x04)+chr(0x07)+chr(0x03)+chr(0xFF))
			ifcam.write(serialDat)
			print data
			sleep(3)
			ifcam.write(stopZoom)
#       stxt=''
#        sleep(0.4)
#        while ifcam.inWaiting()>0:
#            while (len(stxt)<=1):
#                stxt=myQueue.get()
#                print "panjang karakter:"+str(len(stxt))
#        print "Result:"+stxt
#        clientSocket.send("SUCCESS")                
        
    except:
        print "Server Exit"
        exit("Exit by request")
        break
        s.close()
