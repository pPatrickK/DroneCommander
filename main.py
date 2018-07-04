import datetime
from drone_command_queue import *
from drone_command import *
from drone import *
from drone_proxy import *
from drone_commander import *
from print_observer import *

def main():
    max_velocity = 1.0
    error_observer = PrintObserver()
    drones = [
            Drone(max_velocity, Vector3D(0, 0, 0)),
            Drone(max_velocity, Vector3D(0, 1, 0)),
            Drone(max_velocity, Vector3D(1, 0, 0)),
            Drone(max_velocity, Vector3D(1, 1, 0))
    ]
    drones = wrap_drones(drones, error_observer)

    queue = DroneCommandQueue()
    queue.push(make_command(0, DroneStartCommand, 0, 1, 0.9))
    queue.push(make_command(1, DroneStartCommand, 1, 1, 0.5))
    queue.push(make_command(2, DroneStartCommand, 1, 1, 0.5))
    queue.push(make_command(3, DroneStartCommand, 0, 1, 0.5))

    queue.push(make_command(0, DroneMoveCommand, 1, 2, Vector3D(), 0.0))
    queue.push(make_command(1, DroneMoveCommand, 3, 2, Vector3D(), 0.0))
    queue.push(make_command(2, DroneMoveCommand, 3, 1.5, Vector3D(), 0.0))
    queue.push(make_command(3, DroneMoveCommand, 2, 3, Vector3D(), 0.0))


    drone_commander = DroneCommander(drones, queue, error_observer)

    # drone_commander.print_commands()
    drone_commander.run(False)


if __name__ == "__main__":
    main()
