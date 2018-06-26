import paho.mqtt.client as mqtt
from drone import Drone as Drone
from drone_commander import DroneCommander
from vector3d import Vector3D
from drone_command_queue import *
from drone_command import *
from thread import start_new_thread
from print_observer import *
from drone_proxy import *

def on_connect(client, userdata, flags, rc):
    print "Connecterd with the result code: " + str(rc)
    client.subscribe("crazyflie/start")

def on_message(client, userdata, msg):
    print msg.topic + " " + str(msg.payload)
    if(msg.topic == 'crazyflie/start'): # {"id":0, "data": [0.0, 1.0, 0.5] }
        #command_queue.push(make_command(0, DroneMoveCommand, 1, 2, Vector3D(0, 3), 1.0))
        print "got start"
        print make_command_from_json(DroneStartCommand, msg.payload)

def run_drone_commander(args):
    max_velocity = 1.0
    error_observer = PrintObserver()
    drones = [
            Drone(max_velocity, Vector3D(0, 0, 0)),
            Drone(max_velocity, Vector3D(0, 1, 0)),
            Drone(max_velocity, Vector3D(1, 0, 0)),
            Drone(max_velocity, Vector3D(1, 1, 0))
    ]
    drones = wrap_drones(drones, error_observer)
    drone_commander = DroneCommander(drones, command_queue, error_observer)
    drone_commander.runForever()


def main():
    global command_queue
    command_queue = DroneCommandQueue()
    start_new_thread(run_drone_commander, (1,))
    client = mqtt.Client("CrazyflieClient")
    client.on_connect = on_connect
    client.on_message = on_message
    client.connect("broker.hivemq.com", 1883, 60) # host, port, keep_alive

    client.loop_forever()

    client.disconnect()

if __name__ == '__main__':
    main()
