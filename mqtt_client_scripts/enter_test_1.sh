#!/bin/bash
echo Test start
#----------------------------------Gruppe 1-------------------------------------
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":26, "data":[0.0, 2.0, 1.4]}' -t crazyflie/start

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":26, "data": [2.0, 5.0, [0, 0, 1.4], 0.0] }' -t crazyflie/moveto
