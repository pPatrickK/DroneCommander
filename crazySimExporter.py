from drone_command import *
from drone import *
import datetime

def createScript(commands,drones):
    fName = "goHomeScript" + str(datetime.datetime.now()).split('.')[0] + ".py"
    # value = str(datetime.datetime.now())
    # value = value.split('.')[0]
    file= open(fName,"w+")
    # file.write("This is line %d\r\n" % (i+1))
    file.write("#!/usr/bin/env python\r\n")
    file.write("import numpy as np\r\n")
    file.write("from pycrazyswarm import *\r\n")
    file.write("if __name__ == \"__main__\":\r\n")
    file.write("    swarm = Crazyswarm()\r\n")
    file.write("    timeHelper = swarm.timeHelper\r\n")
    file.write("    allcfs = swarm.allcfs\r\n")
    file.write("    allcfs.takeoff(targetHeight=1.0, duration=1.0)\r\n")
    file.write("    timeHelper.sleep(1.1)\r\n")
    id = 0
    for drone in drones:
        file.write("    allcfs.crazyfliesById["+ str(id)+"].goTo("+str(drone.position)+",0,2.0)\r\n")
        id +=1
    file.write("    timeHelper.sleep(2.1)\r\n")

    newTime = 0
    oldTime = 0
    while len(commands.data) > 0:
        command_data = commands.pop()
        id = command_data[0]
        command = command_data[1]
        newTime = command.start
        if newTime>oldTime: #################################################### add timehelper
            file.write("    timeHelper.sleep(" + str(newTime-oldTime) + ")\r\n")

        if command.type == DroneCommandType.MOVEHOME: ##################### add goTo
            posStr = drones[id].home_position
            oldTime = command.start
            dauer = command.time
            file.write("    allcfs.crazyfliesById["+ str(id)+"].goTo("+str(posStr)+",0,"+str(dauer)+")\r\n")
        elif command.type == DroneCommandType.LANDWITHHEIGHT: ############# add land
            oldTime = command.start
            dauer = command.time
            height = command.height
            file.write("    allcfs.crazyfliesById["+ str(id)+"].land("+str(height)+","+str(dauer)+")\r\n")
        else:
            print("fuck you -,,|,,")

    file.write("    timeHelper.sleep(10)\r\n")

    print("Done...")

    file.close()
