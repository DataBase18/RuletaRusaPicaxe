import serial
from os import system
import winsound
 
puerto = "COM6"  
baudrate = 4800 

try:
    picaxe = serial.Serial(puerto, baudrate, timeout=1)    
    while True: 
        dato = picaxe.readline().decode().strip()   
        if dato: 
            parametros = dato.split(",") 
            if(parametros[0] == "beep"):
                winsound.Beep(1000, int (parametros[1]) ) 
            elif(parametros[0]=="DEBUG"):
              print(parametros[1], " : ", parametros[2])



except serial.SerialException:
    print("No se pudo conectar al PICAXE. Verifica el puerto.")
