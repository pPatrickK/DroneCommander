import datetime
from drone_command_queue import *
from drone_command import *

def main():
    queue = DroneCommandQueue()
    queue.push(DroneStartCommand(1, 1, 0.5))
    queue.push(DroneMoveCommand(2.5, 2, Vector2D(2, 3)))
    queue.push(DroneMoveHomeCommand(9, 10))
    queue.push(DroneMoveCommand(4, 7, Vector2D(1, 3)))
    queue.push(DroneMoveToCommand(7, 3, Vector2D(5, 5)))
    queue.push(DroneMoveCommand(3, 3, Vector2D(5, 5)))
    queue.push(DroneLandCommand(10, 1))
    while len(queue.data) > 0:
        command = queue.pop()
        print command

if __name__ == "__main__":
    main()
