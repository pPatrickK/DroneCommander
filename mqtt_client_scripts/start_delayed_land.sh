#!/bin/bash
echo Test start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data":[0.0, 2.0, 1.4]}' -t crazyflie/start

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data": [2.0, 1.6, [0.0, 0.0, 0.8], 0.0] }' -t crazyflie/move

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data": [4.0, 1.6, [0.0, 0.0, -0.8], 0.0] }' -t crazyflie/move

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data": [6.0, 1.6, [0.0, 0.0, 0.8], 0.0] }' -t crazyflie/move

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data": [8.0, 1.6, [0.0, 0.0, -0.8], 0.0] }' -t crazyflie/move

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data": [10.0, 1.6, [0.0, 0.0, 0.8], 0.0] }' -t crazyflie/move

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data": [12.0, 1.6, [0.0, 0.0, -0.8], 0.0] }' -t crazyflie/move

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data":[14.0, 1.5, 0.4]}' -t crazyflie/landwithheight #dauer fürs landen ist hinten!!!
