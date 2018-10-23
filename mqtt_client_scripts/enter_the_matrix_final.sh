#!/bin/bash
echo Enter matrix start
#----------------------------------Gruppe 1-------------------------------------
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":15, "data":[0.0, 2.0, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":17, "data":[0.0, 2.0, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":25, "data":[0.0, 2.0, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":21, "data":[0.0, 2.0, 1.4]}' -t crazyflie/start
# mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":23, "data":[0.0, 2.0, 1.4]}' -t crazyflie/start

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":15, "data": [2.0, 7.0, [7.0, -2.0, 1.4], 0.0] }' -t crazyflie/moveto
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":17, "data": [2.0, 7.0, [5.5, -2.0, 1.4], 0.0] }' -t crazyflie/moveto
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":25, "data": [2.0, 7.0, [4.0, -2.0, 1.4], 0.0] }' -t crazyflie/moveto
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":21, "data": [2.0, 7.0, [2.5, -2.0, 1.4], 0.0] }' -t crazyflie/moveto
# mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":23, "data": [2.0, 7.0, [1.0, -2.0, 1.4], 0.0] }' -t crazyflie/moveto



#----------------------------------Gruppe 2-------------------------------------

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":16, "data":[4.0, 2.0, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":18, "data":[4.0, 2.0, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":20, "data":[4.0, 2.0, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":26, "data":[4.0, 2.0, 1.4]}' -t crazyflie/start
# mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":27, "data":[4.0, 2.0, 1.4]}' -t crazyflie/start

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":16, "data": [6.0, 7.0, [7.0, -0.5, 1.4], 0.0] }' -t crazyflie/moveto
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":18, "data": [6.0, 7.0, [5.5, -0.5, 1.4], 0.0] }' -t crazyflie/moveto
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":20, "data": [6.0, 7.0, [4.0, -0.5, 1.4], 0.0] }' -t crazyflie/moveto
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":26, "data": [6.0, 7.0, [2.5, -0.5, 1.4], 0.0] }' -t crazyflie/moveto
# mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":27, "data": [6.0, 7.0, [1.0, -0.5, 1.4], 0.0] }' -t crazyflie/moveto


#----------------------------------Gruppe 3-------------------------------------

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data":[6.0, 2.0, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data":[6.0, 2.0, 1.4]}' -t crazyflie/start
# mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":12, "data":[6.0, 2.0, 1.4]}' -t crazyflie/start
# mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":7, "data":[6.0, 2.0, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":14, "data":[6.0, 2.0, 1.4]}' -t crazyflie/start

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data": [8.0, 7.0, [7.0, 1.0, 1.4], 0.0] }' -t crazyflie/moveto
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data": [8.0, 7.0, [5.5, 1.0, 1.4], 0.0] }' -t crazyflie/moveto
# mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":12, "data": [8.0, 7.0, [4.0, 1.0, 1.4], 0.0] }' -t crazyflie/moveto
# mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":7, "data": [8.0, 7.0, [2.5, 1.0, 1.4], 0.0] }' -t crazyflie/moveto
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":14, "data": [8.0, 7.0, [1.0, 1.0, 1.4], 0.0] }' -t crazyflie/moveto


#----------------------------------Gruppe 4-------------------------------------

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":2, "data":[10.0, 2.0, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":4, "data":[10.0, 2.0, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":6, "data":[10.0, 2.0, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":8, "data":[10.0, 2.0, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":10, "data":[10.0, 2.0, 1.4]}' -t crazyflie/start

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":2, "data": [12.0, 7.0, [7.0, 2.5, 1.4], 0.0] }' -t crazyflie/moveto
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":4, "data": [12.0, 7.0, [5.5, 2.5, 1.4], 0.0] }' -t crazyflie/moveto
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":6, "data": [12.0, 7.0, [4.0, 2.5, 1.4], 0.0] }' -t crazyflie/moveto
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":8, "data": [12.0, 7.0, [2.5, 2.5, 1.4], 0.0] }' -t crazyflie/moveto
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":10, "data": [12.0, 7.0, [1.0, 2.5, 1.4], 0.0] }' -t crazyflie/moveto
