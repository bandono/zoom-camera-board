#!/usr/bin/python

import sys
import time
import serial

myUsb=sys.argv[1]

# configure the serial connections (the parameters differs on the device you are connecting to)
ser = serial.Serial(
#	port='/dev/ttyUSB0',
	port=myUsb,
	baudrate=9600,
	parity=serial.PARITY_NONE,
	stopbits=serial.STOPBITS_ONE,
	bytesize=serial.EIGHTBITS
)

#ser.open()
serStatus=ser.isOpen()

#print 'Sending ....'
#print serStatus

# send the character to the device
# 
ser.write('ATZ' + '\r')
out = ''
time.sleep(1)
while ser.inWaiting() > 0:
	out += ser.read(1)
if out != '':
	print out
ser.close()
exit()
