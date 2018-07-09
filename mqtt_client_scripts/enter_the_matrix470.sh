#!/bin/bash
echo Test start
#----------------------------------Gruppe 3-------------------------------------
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data":[0.0, 2.0, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data":[0.0, 2.0, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":5, "data":[0.0, 2.0, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":7, "data":[0.0, 2.0, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":9, "data":[0.0, 2.0, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":11, "data":[0.0, 2.0, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":13, "data":[0.0, 2.0, 1.4]}' -t crazyflie/start

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data": [2.0, 9.0, [7.0, 1.0, 1.4], 0.0] }' -t crazyflie/moveto
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data": [2.0, 9.0, [5.5, 1.0, 1.4], 0.0] }' -t crazyflie/moveto
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":5, "data": [2.0, 9.0, [4.0, 1.0, 1.4], 0.0] }' -t crazyflie/moveto
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":7, "data": [2.0, 9.0, [2.5, 1.0, 1.4], 0.0] }' -t crazyflie/moveto
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":9, "data": [2.0, 9.0, [1.0, 1.0, 1.4], 0.0] }' -t crazyflie/moveto
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":11, "data": [2.0, 9.0, [-0.5, 1.0, 1.4], 0.0] }' -t crazyflie/moveto
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":13, "data": [2.0, 9.0, [-2.0, 1.0, 1.4], 0.0] }' -t crazyflie/moveto
