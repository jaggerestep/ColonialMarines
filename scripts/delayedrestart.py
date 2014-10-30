#!/usr/bin/env python2

import sys, os, math,time,random,string
from subprocess import call


print("Restarting Server")
time.sleep(1)

os.system("taskkill /F /im ddaemon.exe")
call("pythonw \"C:/Users/Administrator/Desktop/Launch Marines.py\"", shell=True)

sys.exit()	