import numpy as np
from drone_command_queue import *
from drone import *
import crazySimExporter as script
from drone_command import *

max_velocity = 1.0

drones = [
          Drone(max_velocity, Vector3D(0, 0, 0)),
          Drone(max_velocity, Vector3D(0, 1, 0)),
          Drone(max_velocity, Vector3D(1, 0, 0)),
          Drone(max_velocity, Vector3D(1, 1, 0))
  ]

for drone in drones:
    x = np.random.uniform(0,5)
    y = np.random.uniform(0,5)
    z = np.random.uniform(0,5)
    drone.moveTo(Vector3D(x,y,z), 0, 1)

for drone in drones:
    print(str(drone.position))


queue = DroneCommandQueue()
queue.push(make_command(0, DroneMoveHomeCommand, 0, 3))
queue.push(make_command(1, DroneMoveHomeCommand, 0, 4))
queue.push(make_command(2, DroneMoveHomeCommand, 0, 5))
queue.push(make_command(3, DroneMoveHomeCommand, 0, 6))

queue.push(make_command(0, DroneLandWithHeightCommand, 3.1, 1, 0))
queue.push(make_command(1, DroneLandWithHeightCommand, 4.1, 1, 0))
queue.push(make_command(2, DroneLandWithHeightCommand, 5.1, 1, 0))
queue.push(make_command(3, DroneLandWithHeightCommand, 6.1, 1, 0))


script.createScript(queue, drones)
