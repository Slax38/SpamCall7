import os,sys,time,requests,json
from requests import post
import webbrowser
from sys import exit
from getch import pause
from tkinter import Tk, filedialog


def balik():
   f = input("\033[31mQuieres seguir ejecutando el script: (s/n): \033[31m")
   if f == "s":
      os.system("python3 script.py")
   elif f == "n":
        sys.exit("\033[31m")

if os.geteuid() != 0:
    exit("\033[31mNO SE DETECTO ACESSO ROOT :( ")

m = '\033[1;31m' 
b = '\033[1;36m'       
k = '\033[1;33m' 
h = '\033[1;32m'
u = '\033[1;35m'
p = '\033[1;37m'
ut = '\033[1;34m'
     

os.system('clear')
def asw(b):
  for m in b + "\n":
      sys.stdout.write(m)
      sys.stdout.flush()
      time.sleep(3./100)

def lo(s):
  for c in s  + "\n":
      sys.stdout.write(c)
      sys.stdout.flush()
      time.sleep(3./100)
asw(f"{m}Elige la opcion con la que quieres atacar:")
print()
print ("[1] NUMERO POR DEFECTO")
print()
print ("[2] OTRO NUMERO PARA ATACAR")
print()
f = input("\033[31m")
if f == "1":
   os.system("python3 script5.py")
if f == "2":
   os.system("python3 script6.py")