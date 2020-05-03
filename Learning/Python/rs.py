#############################################################################################
##  rs.py
##  Python
##  Created by Raech on 04/27/20.
#############################################################################################
import math

def tx(x,y,ang,txy):
    cos = math.cos(math.radians(2*ang))
    sen = math.sin(math.radians(2*ang))
    pr1 = (x + y) / 2
    pr2 = ((x - y) / 2) * cos
    pr3 = txy * sen
    return pr1+pr2+pr3

def ty(x,y,ang,txy):
    cos = math.cos(math.radians(2*(ang+90)))
    sen = math.sin(math.radians(2*(ang+90)))
    pr1 = (x + y) / 2
    pr2 = ((x - y) / 2) * cos
    pr3 = txy * sen
    return pr1+pr2+pr3
    

def cis2(x,y,ang,txy):
    cos = math.cos(math.radians(2*(90+ang)))
    sen = math.sin(math.radians(2*(90+ang)))
    pr2 = (-(x - y) / 2) * sen
    pr3 = txy * cos
    return pr2+pr3

def cis(x,y,ang,txy):
    cos = math.cos(math.radians(2*ang))
    sen = math.sin(math.radians(2*ang))
    pr2 = (-(x - y) / 2) * sen
    pr3 = txy * cos
    return pr2+pr3

def gdeg(x,y,txy):
    deg = math.degrees(math.atan((2 * txy) / (x - y)))
    return deg/2

def rtxy(x,y,txy):
    i = ((x - y) / 2)
    return math.sqrt(i**2 + txy**2)

def result(x,y,ang,txy):
    if ang == 0:
        e = float("{:.3f}".format(gdeg(x, y, txy)))
        print("Ideal")
        print("angulo = {}".format(e))
        ang = e
        c = float("{:.3f}".format(rtxy(x,y,txy)))
        d = -c
    else:
        c = float("{:.3f}".format(cis(x, y, ang, txy)))
        d = float("{:.3f}".format(cis2(x, y, ang, txy)))

    a = float("{:.3f}".format(tx(x, y, ang, txy)))
    b = float("{:.3f}".format(ty(x, y, ang, txy)))
    print("tensao x = {}\t\t\ttensao y = {}\ncisalhamento = {}\t\tcisalhamento2 = {}".format(a, b, c, d))
