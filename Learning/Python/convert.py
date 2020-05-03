#############################################################################################
##  convert.py
##  Python
##  Created by Raech on 05/01/20.
#############################################################################################
import subprocess, sys

def terminal_command(cmd):
    return subprocess.check_call(cmd, shell=True)

def read_theme(theme):
    clist = []
    with open(theme, "r") as fi:
        for line in fi:
            if "color" in line:
                clist.append(line.split(":")[1].strip(" \n").replace("#","0x"))
    return clist

def hex_to_rgb(color):
    result = []
    result.append("{:.6f}".format(int(str((color >> 16) & 0xFF)) / 256))
    result.append("{:.6f}".format(int(str((color >> 8) & 0xFF)) / 256))
    result.append("{:.6f}".format(int(str((color) & 0xFF)) / 256))
    return result

def gtk_rgba_list(cc):
    r = []
    for x in cc:
        r.append(hex_to_rgb(int(x, 16)))
    return r

def print_to_clipboard(clist):
    txt = ""
    toFile = ""
    with open("/var/tmp/clip.123", "+w") as fi:
        for i in range(len(clist)):
            if i != 15:
                toFile = "{ "+ clist[i][0] + ", " + clist[i][1] + ", " + clist[i][2] + ", " + "1.000000 },\n"
            else:
                toFile = "{ "+ clist[i][0] + ", " + clist[i][1] + ", " + clist[i][2] + ", " + "1.000000 }\n"

            fi.write(toFile)
            txt += toFile

    terminal_command("xsel -b < /var/tmp/clip.123")
    terminal_command("rm /var/tmp/clip.123")
    print(txt)
                

def Main():
    colors = read_theme(sys.argv[1])
    clist = (gtk_rgba_list(colors))

    print_to_clipboard(clist)

Main()
