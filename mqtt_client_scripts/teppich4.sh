#!/bin/bash
echo start teppich
#---------------1--------------Block rauf-------------------------------------------
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":25, "data": [0.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":26, "data": [0.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":8, "data": [0.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":5, "data": [0.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":18, "data": [0.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":15, "data": [0.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":23, "data": [0.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":29, "data": [1.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":2, "data": [1.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":13, "data": [1.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":6, "data": [1.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data": [1.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":16, "data": [1.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":10, "data": [1.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":7, "data": [1.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":20, "data": [1.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":17, "data": [1.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":24, "data": [1.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":21, "data": [1.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":11, "data": [2.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":4, "data": [2.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data": [2.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":9, "data": [2.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":22, "data": [2.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":19, "data": [2.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move


#----------------1-------------Block runter-------------------------------------------

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":25, "data": [2.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":26, "data": [2.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":8, "data": [2.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":5, "data": [2.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":18, "data": [2.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":15, "data": [2.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":23, "data": [2.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":29, "data": [3.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":2, "data": [3.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":13, "data": [3.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":6, "data": [3.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data": [3.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":16, "data": [3.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":10, "data": [3.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":7, "data": [3.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":20, "data": [3.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":17, "data": [3.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":24, "data": [3.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":21, "data": [3.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":11, "data": [4.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":4, "data": [4.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data": [4.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":9, "data": [4.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":22, "data": [4.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":19, "data": [4.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move


#------------------2-----------Block rauf-------------------------------------------

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":25, "data": [4.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":26, "data": [4.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":8, "data": [4.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":5, "data": [4.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":18, "data": [4.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":15, "data": [4.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":23, "data": [4.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":29, "data": [5.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":2, "data": [5.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":13, "data": [5.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":6, "data": [5.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data": [5.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":16, "data": [5.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":10, "data": [5.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":7, "data": [5.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":20, "data": [5.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":17, "data": [5.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":24, "data": [5.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":21, "data": [5.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":11, "data": [6.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":4, "data": [6.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data": [6.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":9, "data": [6.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":22, "data": [6.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":19, "data": [6.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move


#------------------2-----------Block runter-------------------------------------------

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":25, "data": [6.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":26, "data": [6.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":8, "data": [6.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":5, "data": [6.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":18, "data": [6.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":15, "data": [6.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":23, "data": [6.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":29, "data": [7.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":2, "data": [7.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":13, "data": [7.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":6, "data": [7.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data": [7.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":16, "data": [7.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":10, "data": [7.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":7, "data": [7.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":20, "data": [7.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":17, "data": [7.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":24, "data": [7.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":21, "data": [7.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":11, "data": [8.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":4, "data": [8.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data": [8.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":9, "data": [8.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":22, "data": [8.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":19, "data": [8.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move


#--------------3---------------Block rauf-------------------------------------------

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":25, "data": [8.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":26, "data": [8.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":8, "data": [8.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":5, "data": [8.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":18, "data": [8.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":15, "data": [8.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":23, "data": [8.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":29, "data": [9.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":2, "data": [9.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":13, "data": [9.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":6, "data": [9.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data": [9.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":16, "data": [9.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":10, "data": [9.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":7, "data": [9.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":20, "data": [9.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":17, "data": [9.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":24, "data": [9.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":21, "data": [9.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":11, "data": [10.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":4, "data": [10.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data": [10.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":9, "data": [10.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":22, "data": [10.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":19, "data": [10.0, 2, [0.0, 0.0, 0.3], 0.0] }' -t crazyflie/move


#--------------3---------------Block runter-------------------------------------------

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":25, "data": [10.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":26, "data": [10.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":8, "data": [10.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":5, "data": [10.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":18, "data": [10.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":15, "data": [10.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":23, "data": [10.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":29, "data": [11.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":2, "data": [11.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":13, "data": [11.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":6, "data": [11.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data": [11.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":16, "data": [11.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":10, "data": [11.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":7, "data": [11.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":20, "data": [11.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":17, "data": [11.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":24, "data": [11.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":21, "data": [11.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":11, "data": [12.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":4, "data": [12.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data": [12.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":9, "data": [12.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":22, "data": [12.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":19, "data": [12.0, 2, [0.0, 0.0, -0.3], 0.0] }' -t crazyflie/move
