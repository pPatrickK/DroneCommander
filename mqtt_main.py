import paho.mqtt.client as mqtt
from drone import Drone as Drone
from crazyflie_drone import *
from drone_commander import DroneCommander
from vector3d import Vector3D
from drone_command_queue import *
from drone_command import *
from thread import start_new_thread
from print_observer import *
from drone_proxy import *
from drone_yaml_reader import *
import sys, os
import time
import json
from generate_trajectory import generate_trajectory
sys.path.append(os.path.join(sys.path[0], '..')) # for pycrazyswam
from pycrazyswarm import *

import signal

def signal_handler(signal, frame):
        print('You pressed Ctrl+C!')
        sys.exit(0)

signal.signal(signal.SIGINT, signal_handler)

def on_connect(client, userdata, flags, rc):
    print "Connecterd with the result code: " + str(rc)
    client.subscribe("crazyflie/start")
    client.subscribe("crazyflie/land")
    client.subscribe("crazyflie/move")
    client.subscribe("crazyflie/moveto")
    client.subscribe("crazyflie/movehome")
    client.subscribe("crazyflie/landwithheight")
    client.subscribe("crazyflie/startChoreography")
    client.subscribe("crazyflie/createTrajectory")

def on_message(client, userdata, msg):
    print msg.topic + " " + str(msg.payload)
    if(msg.topic == 'crazyflie/start'): # {"id":0, "data": [0.0, 1.0, 0.5] }
        command_queue.push(make_command_from_json(DroneStartCommand, msg.payload, True))
    elif(msg.topic == 'crazyflie/land'): # {"id":0, "data": [0.0, 1.0] }
        command_queue.push(make_command_from_json(DroneLandCommand, msg.payload, True))
    elif(msg.topic == 'crazyflie/move'): # {"id":0, "data": [0.0, 3.0, [0.5, 0.1, 0.0], 0.0] }
        command_queue.push(make_command_from_json(DroneMoveCommand, msg.payload, True))
    elif(msg.topic == 'crazyflie/moveto'): # {"id":0, "data": [0.0, 2.0, [3.0, 1.5, 0.6], 0.0] }
        command_queue.push(make_command_from_json(DroneMoveToCommand, msg.payload, True))
    elif(msg.topic == 'crazyflie/movehome'): # {"id":0, "data": [0.0, 5.0] }
        command_queue.push(make_command_from_json(DroneMoveHomeCommand, msg.payload, True))
    elif(msg.topic == 'crazyflie/landwithheight'): # {"id":0, "data": [0.0, 0.02, 1.0] }
        command_queue.push(make_command_from_json(DroneLandWithHeightCommand, msg.payload, True))
    elif(msg.topic == 'crazyflie/startChoreography'):
        commands = read_commands_from_file("DroneCommander/choreographies/" + json.loads(msg.payload))
        for command in commands:
            command_queue.push(command)
    elif(msg.topic == 'crazyflie/createTrajectory'): # [[x,y,z],[x,y,z]]
        trajectory_name = generate_trajectory(json.loads(msg.payload))
        command_queue.push((1, DroneRunTrajectoryCommand(0.0, 1.0, trajectory_name)))#make_command(1, DroneRunTrajectoryCommand, [0.0, 1.0, trajectory_name], True))

def run_drone_commander():
    swarm = Crazyswarm()
    allcfs = swarm.allcfs
    max_velocity = 1.0
    error_observer = PrintObserver()
    drones = {}
    drone_initial_data = get_initial_positions_by_id('../launch/crazyflies.yaml')
    for id, init_pos in drone_initial_data.iteritems():
        drones[id] = CrazyflieDrone(allcfs.crazyfliesById[id], allcfs, max_velocity, vector3d_from_list(init_pos))
        #drones.append(CrazyflieDrone(allcfs.crazyfliesById[id], max_velocity, vector3d_from_list(init_pos)))
    #drones = wrap_drones(drones, error_observer)
    drone_commander = DroneCommander(drones, command_queue, error_observer)
    drone_commander.runForever()

def run_mqtt_client():
    while True:
        try:
            client = mqtt.Client("CrazyflieClient")
            client.on_connect = on_connect
            client.on_message = on_message
            client.connect("gopher.phynetlab.com", 8883, 60) # host, port, keep_alive
            client.loop_forever()

            client.disconnect()
        except KeyboardInterrupt:
            print "asdsad"
            return
        except Exception, e:
            print "some mqtt error: ", e

def main():
    global command_queue
    command_queue = DroneCommandQueue()
    start_new_thread(run_mqtt_client, ())
    run_drone_commander()


if __name__ == '__main__':
    main()
