#!/bin/bash
echo Test start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":2, "data":[0.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":4, "data":[0.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":6, "data":[0.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":8, "data":[0.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":10, "data":[0.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":12, "data":[0.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":14, "data":[0.0, 2.0, 1.5]}' -t crazyflie/start

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":2, "data": [2.0, 3, [0.0, -3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":4, "data": [2.0, 3, [0.0, -3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":6, "data": [2.0, 3, [0.0, -3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":8, "data": [2.0, 3, [0.0, -3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":10, "data": [2.0, 3, [0.0, -3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":12, "data": [2.0, 3, [0.0, -3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":14, "data": [2.0, 3, [0.0, -3.0, 0.0], 0.0] }' -t crazyflie/move


mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":2, "data": [6.0, 3, [-3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":4, "data": [6.0, 3, [-3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":6, "data": [6.0, 3, [-3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":8, "data": [6.0, 3, [-3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":10, "data": [6.0, 3, [-3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":12, "data": [6.0, 3, [-3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":14, "data": [6.0, 3, [-3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":2, "data": [10.0, 3, [3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":4, "data": [10.0, 3, [3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":6, "data": [10.0, 3, [3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":8, "data": [10.0, 3, [3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":10, "data": [10.0, 3, [3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":12, "data": [10.0, 3, [3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":14, "data": [10.0, 3, [3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":2, "data": [14.0, 3, [0.0, 3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":4, "data": [14.0, 3, [0.0, 3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":6, "data": [14.0, 3, [0.0, 3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":8, "data": [14.0, 3, [0.0, 3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":10, "data": [14.0, 3, [0.0, 3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":12, "data": [14.0, 3, [0.0, 3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":14, "data": [14.0, 3, [0.0, 3.0, 0.0], 0.0] }' -t crazyflie/move


mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":2, "data":[18.0, 1.5, 0.5]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":4, "data":[18.0, 1.5, 0.5]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":6, "data":[18.0, 1.5, 0.5]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":8, "data":[18.0, 1.5, 0.5]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":10, "data":[18.0, 1.5, 0.5]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":12, "data":[18.0, 1.5, 0.5]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":14, "data":[18.0, 1.5, 0.5]}' -t crazyflie/landwithheight
