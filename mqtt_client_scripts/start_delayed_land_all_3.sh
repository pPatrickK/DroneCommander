#!/bin/bash
echo Test start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":15, "data":[0.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":17, "data":[0.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":19, "data":[0.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":21, "data":[0.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":23, "data":[0.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":25, "data":[0.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":29, "data":[0.0, 2.0, 1.5]}' -t crazyflie/start

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":15, "data": [2.0, 3, [0.0, -3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":17, "data": [2.0, 3, [0.0, -3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":19, "data": [2.0, 3, [0.0, -3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":21, "data": [2.0, 3, [0.0, -3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":23, "data": [2.0, 3, [0.0, -3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":25, "data": [2.0, 3, [0.0, -3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":29, "data": [2.0, 3, [0.0, -3.0, 0.0], 0.0] }' -t crazyflie/move


mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":15, "data": [6.0, 3, [-3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":17, "data": [6.0, 3, [-3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":19, "data": [6.0, 3, [-3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":21, "data": [6.0, 3, [-3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":23, "data": [6.0, 3, [-3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":25, "data": [6.0, 3, [-3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":29, "data": [6.0, 3, [-3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":15, "data": [10.0, 3, [3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":17, "data": [10.0, 3, [3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":19, "data": [10.0, 3, [3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":21, "data": [10.0, 3, [3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":23, "data": [10.0, 3, [3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":25, "data": [10.0, 3, [3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":29, "data": [10.0, 3, [3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":15, "data": [14.0, 3, [0.0, 3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":17, "data": [14.0, 3, [0.0, 3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":19, "data": [14.0, 3, [0.0, 3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":21, "data": [14.0, 3, [0.0, 3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":23, "data": [14.0, 3, [0.0, 3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":25, "data": [14.0, 3, [0.0, 3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":29, "data": [14.0, 3, [0.0, 3.0, 0.0], 0.0] }' -t crazyflie/move


mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":15, "data":[18.0, 1.5, 0.5]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":17, "data":[18.0, 1.5, 0.5]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":19, "data":[18.0, 1.5, 0.5]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":21, "data":[18.0, 1.5, 0.5]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":23, "data":[18.0, 1.5, 0.5]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":25, "data":[18.0, 1.5, 0.5]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":29, "data":[18.0, 1.5, 0.5]}' -t crazyflie/landwithheight
