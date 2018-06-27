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
sys.path.append(os.path.join(sys.path[0], '..')) # for pycrazyswam
from pycrazyswarm import *

def on_connect(client, userdata, flags, rc):
    print "Connecterd with the result code: " + str(rc)
    client.subscribe("crazyflie/start")
    client.subscribe("crazyflie/land")
    client.subscribe("crazyflie/move")
    client.subscribe("crazyflie/moveto")
    client.subscribe("crazyflie/movehome")

def on_message(client, userdata, msg):
    print msg.topic + " " + str(msg.payload)
    if(msg.topic == 'crazyflie/start'): # {"id":0, "data": [0.0, 1.0, 0.5] }
        print make_command_from_json(DroneStartCommand, msg.payload)
    elif(msg.topic == 'crazyflie/land'): # {"id":0, "data": [0.0, 1.0] }
        print make_command_from_json(DroneLandCommand, msg.payload)
    elif(msg.topic == 'crazyflie/move'): # {"id":0, "data": [0.0, 3.0, [0.5, 0.1, 0.0], 0.0] }
        print make_command_from_json(DroneMoveCommand, msg.payload)
    elif(msg.topic == 'crazyflie/moveto'): # {"id":0, "data": [0.0, 2.0, [3.0, 1.5, 0.6], 0.0] }
        print make_command_from_json(DroneMoveToCommand, msg.payload)
    elif(msg.topic == 'crazyflie/movehome'): # {"id":0, "data": [0.0, 5.0] }
        print make_command_from_json(DroneMoveHomeCommand, msg.payload)

def run_drone_commander():
    swarm = Crazyswarm()
    allcfs = swarm.allcfs
    max_velocity = 1.0
    error_observer = PrintObserver()
    drones = []
    drone_initial_data = get_initial_positions_by_id('../../launch/crazyflies.yaml')
    for id, init_pos in drone_initial_data.iteritems():
        drones.append(CrazyflieDrone(allcfs.crazyfliesById[id], max_velocity, vector3d_from_list(init_pos)))
    drones = wrap_drones(drones, error_observer)
    drone_commander = DroneCommander(drones, command_queue, error_observer)
    drone_commander.runForever()

def run_mqtt_client():
    client = mqtt.Client("CrazyflieClient")
    client.on_connect = on_connect
    client.on_message = on_message
    client.connect("gopher.phynetlab.com", 8883, 60) # host, port, keep_alive

    client.loop_forever()

    client.disconnect()

def main():
    global command_queue
    command_queue = DroneCommandQueue()
    start_new_thread(run_mqtt_client, ())
    run_drone_commander()


if __name__ == '__main__':
    main()
