#!/bin/bash
echo Test start

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":8, "data": [0.0, 3, [0.0, 0.0, 0.6], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":6, "data": [0.0, 3, [0.0, 0.0, 0.6], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":4, "data": [0.0, 3, [0.0, 0.0, 0.6], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":7, "data": [0.0, 3, [0.0, 0.0, 0.6], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data": [0.0, 3, [0.0, 0.0, 0.6], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":22, "data": [0.0, 3, [0.0, 0.0, 0.6], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":20, "data": [0.0, 3, [0.0, 0.0, 0.6], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":18, "data": [0.0, 3, [0.0, 0.0, 0.6], 0.0] }' -t crazyflie/move

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":5, "data": [0.0, 6, [0.0, 0.0, 1.2], 0.0] }' -t crazyflie/move

#---------------------------------------positions wechsel-----------------------


mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":26, "data": [9, 6, [0.0, 0.0, 1.2], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":10, "data": [9, 6, [0.0, 0.0, 1.2], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":9, "data": [9, 6, [0.0, 0.0, 1.2], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":24, "data": [9, 6, [0.0, 0.0, 1.2], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":23, "data": [9, 6, [0.0, 0.0, 1.2], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":21, "data": [9, 6, [0.0, 0.0, 1.2], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":19, "data": [9, 6, [0.0, 0.0, 1.2], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":17, "data": [9, 6, [0.0, 0.0, 1.2], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":15, "data": [9, 6, [0.0, 0.0, 1.2], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":16, "data": [9, 6, [0.0, 0.0, 1.2], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data": [9, 6, [0.0, 0.0, 1.2], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":2, "data": [9, 6, [0.0, 0.0, 1.2], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":25, "data": [9, 6, [0.0, 0.0, 1.2], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":29, "data": [9, 6, [0.0, 0.0, 1.2], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":11, "data": [9, 6, [0.0, 0.0, 1.2], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":13, "data": [9, 6, [0.0, 0.0, 1.2], 0.0] }' -t crazyflie/move

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":5, "data": [9, 6, [0.0, 0.0, -1.2], 0.0] }' -t crazyflie/move


#--------------------------normalize--------------------------------------------


mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":26, "data": [18, 6, [0.0, 0.0, -1.2], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":10, "data": [18, 6, [0.0, 0.0, -1.2], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":9, "data": [18, 6, [0.0, 0.0, -1.2], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":24, "data": [18, 6, [0.0, 0.0, -1.2], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":23, "data": [18, 6, [0.0, 0.0, -1.2], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":21, "data": [18, 6, [0.0, 0.0, -1.2], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":19, "data": [18, 6, [0.0, 0.0, -1.2], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":17, "data": [18, 6, [0.0, 0.0, -1.2], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":15, "data": [18, 6, [0.0, 0.0, -1.2], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":16, "data": [18, 6, [0.0, 0.0, -1.2], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data": [18, 6, [0.0, 0.0, -1.2], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":2, "data": [18, 6, [0.0, 0.0, -1.2], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":25, "data": [18, 6, [0.0, 0.0, -1.2], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":29, "data": [18, 6, [0.0, 0.0, -1.2], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":11, "data": [18, 6, [0.0, 0.0, -1.2], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":13, "data": [18, 6, [0.0, 0.0, -1.2], 0.0] }' -t crazyflie/move


mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":8, "data": [18, 3, [0.0, 0.0, -0.6], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":6, "data": [18, 3, [0.0, 0.0, -0.6], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":4, "data": [18, 3, [0.0, 0.0, -0.6], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":7, "data": [18, 3, [0.0, 0.0, -0.6], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data": [18, 3, [0.0, 0.0, -0.6], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":22, "data": [18, 3, [0.0, 0.0, -0.6], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":20, "data": [18, 3, [0.0, 0.0, -0.6], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":18, "data": [18, 3, [0.0, 0.0, -0.6], 0.0] }' -t crazyflie/move
