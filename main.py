import datetime
from drone_command_queue import *
from drone_command import *
from drone import *
from drone_proxy import *

def main():
    max_velocity = 1.0
    drones = [
            Drone(max_velocity, Vector2D(0, 0)),
            Drone(max_velocity, Vector2D(0, 1)),
            Drone(max_velocity, Vector2D(1, 0)),
            Drone(max_velocity, Vector2D(1, 1))
    ]
    wraped_drones = wrap_drones(drones)

    queue = DroneCommandQueue()
    queue.push(make_command(0, DroneStartCommand, 0, 1, 0.5))
    queue.push(make_command(1, DroneStartCommand, 1, 1, 0.5))
    queue.push(make_command(2, DroneStartCommand, 1, 1, 0.5))
    queue.push(make_command(3, DroneStartCommand, 0, 1, 0.5))

    queue.push(make_command(0, DroneMoveCommand, 1, 2, Vector2D()))
    queue.push(make_command(1, DroneMoveCommand, 3, 2, Vector2D()))
    queue.push(make_command(2, DroneMoveCommand, 3, 1.5, Vector2D()))
    queue.push(make_command(3, DroneMoveCommand, 2, 3, Vector2D()))

    while len(queue.data) > 0:
        command_data = queue.pop()
        id = command_data[0]
        command = command_data[1]
        print "drone:", id
        print command

if __name__ == "__main__":
    main()