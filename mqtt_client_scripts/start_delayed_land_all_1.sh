#!/bin/bash
echo Test start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data":[0.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data":[0.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":5, "data":[0.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":7, "data":[0.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":9, "data":[0.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":11, "data":[0.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":13, "data":[0.0, 2.0, 1.5]}' -t crazyflie/start

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data": [2.0, 3, [0.0, -3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data": [2.0, 3, [0.0, -3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":5, "data": [2.0, 3, [0.0, -3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":7, "data": [2.0, 3, [0.0, -3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":9, "data": [2.0, 3, [0.0, -3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":11, "data": [2.0, 3, [0.0, -3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":13, "data": [2.0, 3, [0.0, -3.0, 0.0], 0.0] }' -t crazyflie/move


mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data": [6.0, 3, [-3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data": [6.0, 3, [-3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":5, "data": [6.0, 3, [-3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":7, "data": [6.0, 3, [-3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":9, "data": [6.0, 3, [-3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":11, "data": [6.0, 3, [-3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":13, "data": [6.0, 3, [-3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data": [10.0, 3, [3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data": [10.0, 3, [3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":5, "data": [10.0, 3, [3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":7, "data": [10.0, 3, [3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":9, "data": [10.0, 3, [3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":11, "data": [10.0, 3, [3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":13, "data": [10.0, 3, [3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data": [14.0, 3, [0.0, 3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data": [14.0, 3, [0.0, 3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":5, "data": [14.0, 3, [0.0, 3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":7, "data": [14.0, 3, [0.0, 3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":9, "data": [14.0, 3, [0.0, 3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":11, "data": [14.0, 3, [0.0, 3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":13, "data": [14.0, 3, [0.0, 3.0, 0.0], 0.0] }' -t crazyflie/move


mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data":[18.0, 1.5, 0.5]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data":[18.0, 1.5, 0.5]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":5, "data":[18.0, 1.5, 0.5]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":7, "data":[18.0, 1.5, 0.5]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":9, "data":[18.0, 1.5, 0.5]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":11, "data":[18.0, 1.5, 0.5]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":13, "data":[18.0, 1.5, 0.5]}' -t crazyflie/landwithheight
