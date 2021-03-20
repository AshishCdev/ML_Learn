import threading
import time
import ctypes
import os
import random
from itertools import count
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation

############## For generating the c file function in python ######################################
while (os.system("rm light_gpu_handler.so") != 0):
    time.sleep(1)
    
while (os.system("cc -fPIC -shared -o light_gpu_handler.so light_gpu_handler.c") != 0):
    time.sleep(1)

gup_handler_function = ctypes.CDLL("./light_gpu_handler.so")

############### For plotting related functions ###################################################

def animate(i):
    x_vals.append(next(index))
    y_vals.append(random.randint(-5,5))
    plt.cla()
    plt.plot(x_vals, y_vals)

def Task_10_ms():
    while True:
        print("Hello world")
        time.sleep(0.01)
        
if __name__ == '__main__':
    threading.Thread(target=Task_10_ms).start()
    plt.style.use('fivethirtyeight')
    x_vals = []
    y_vals = []
    index = count()
    ani = FuncAnimation(plt.gcf(), animate, interval=16)
    plt.tight_layout()
    plt.show()
   
##################################################################################################