#!/bin/bash
echo Hello run trajectory
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '[[7.8611, 4.6845, 1.0], [7.0, 2.0, 1.0], [5.0, 2.0, 1.0], [5.0, 4.0, 1.0], [0.0, 0.0, 1.0]]' -t crazyflie/createTrajectory
