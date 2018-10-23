#!/bin/bash
echo Test start
#----------------------------------Gruppe 1-------------------------------------
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data":[0.0, 2.5, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data":[0.0, 2.5, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":21, "data":[0.0, 2.5, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":26, "data":[0.0, 2.5, 1.4]}' -t crazyflie/start

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data": [2.5, 8.0, [5.4, -2.4, 1.4], 0.0] }' -t crazyflie/moveto
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data": [2.5, 8.0, [4.2, -2.4, 1.4], 0.0] }' -t crazyflie/moveto
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":21, "data": [2.5, 8.0, [3.0, -2.4, 1.4], 0.0] }' -t crazyflie/moveto
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":26, "data": [2.5, 8.0, [1.8, -2.4, 1.4], 0.0] }' -t crazyflie/moveto



#----------------------------------Gruppe 2-------------------------------------

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":2, "data":[3.5, 2.5, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":4, "data":[3.5, 2.5, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":20, "data":[3.5, 2.5, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":25, "data":[3.5, 2.5, 1.4]}' -t crazyflie/start

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":2, "data": [6.0, 8.0, [5.4, -1.2, 1.4], 0.0] }' -t crazyflie/moveto
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":4, "data": [6.0, 8.0, [4.2, -1.2, 1.4], 0.0] }' -t crazyflie/moveto
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":20, "data": [6.0, 8.0, [3.0, -1.2, 1.4], 0.0] }' -t crazyflie/moveto
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":25, "data": [6.0, 8.0, [1.8, -1.2, 1.4], 0.0] }' -t crazyflie/moveto


#----------------------------------Gruppe 3-------------------------------------

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":6, "data":[7.0, 2.5, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":10, "data":[7.0, 2.5, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":16, "data":[7.0, 2.5, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":18, "data":[7.0, 2.5, 1.4]}' -t crazyflie/start

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":6, "data": [9.5, 8.0, [5.4, 0.0, 1.4], 0.0] }' -t crazyflie/moveto
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":10, "data": [9.5, 8.0, [4.2, 0.0, 1.4], 0.0] }' -t crazyflie/moveto
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":16, "data": [9.5, 8.0, [3.0, 0.0, 1.4], 0.0] }' -t crazyflie/moveto
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":18, "data": [9.5, 8.0, [1.8, 0.0, 1.4], 0.0] }' -t crazyflie/moveto


#----------------------------------Gruppe 4-------------------------------------

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":8, "data":[10.5, 2.5, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":14, "data":[10.5, 2.5, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":15, "data":[10.5, 2.5, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":17, "data":[10.5, 2.5, 1.4]}' -t crazyflie/start

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":8, "data": [12, 8.0, [5.4, 1.2, 1.4], 0.0] }' -t crazyflie/moveto
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":14, "data": [12, 8.0, [4.2, 1.2, 1.4], 0.0] }' -t crazyflie/moveto
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":15, "data": [12, 8.0, [3.0, 1.2, 1.4], 0.0] }' -t crazyflie/moveto
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":17, "data": [12, 8.0, [1.8, 1.2, 1.4], 0.0] }' -t crazyflie/moveto
