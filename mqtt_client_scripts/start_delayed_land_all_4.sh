#!/bin/bash
echo Test start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":16, "data":[0.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":18, "data":[0.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":20, "data":[0.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":22, "data":[0.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":24, "data":[0.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":26, "data":[0.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":28, "data":[0.0, 2.0, 1.5]}' -t crazyflie/start

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":16, "data": [2.0, 3, [0.0, -3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":18, "data": [2.0, 3, [0.0, -3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":20, "data": [2.0, 3, [0.0, -3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":22, "data": [2.0, 3, [0.0, -3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":24, "data": [2.0, 3, [0.0, -3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":26, "data": [2.0, 3, [0.0, -3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":28, "data": [2.0, 3, [0.0, -3.0, 0.0], 0.0] }' -t crazyflie/move


mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":16, "data": [6.0, 3, [-3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":18, "data": [6.0, 3, [-3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":20, "data": [6.0, 3, [-3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":22, "data": [6.0, 3, [-3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":24, "data": [6.0, 3, [-3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":26, "data": [6.0, 3, [-3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":28, "data": [6.0, 3, [-3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":16, "data": [10.0, 3, [3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":18, "data": [10.0, 3, [3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":20, "data": [10.0, 3, [3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":22, "data": [10.0, 3, [3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":24, "data": [10.0, 3, [3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":26, "data": [10.0, 3, [3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":28, "data": [10.0, 3, [3.0, 0.0, 0.0], 0.0] }' -t crazyflie/move

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":16, "data": [14.0, 3, [0.0, 3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":18, "data": [14.0, 3, [0.0, 3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":20, "data": [14.0, 3, [0.0, 3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":22, "data": [14.0, 3, [0.0, 3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":24, "data": [14.0, 3, [0.0, 3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":26, "data": [14.0, 3, [0.0, 3.0, 0.0], 0.0] }' -t crazyflie/move
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":28, "data": [14.0, 3, [0.0, 3.0, 0.0], 0.0] }' -t crazyflie/move


mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":16, "data":[18.0, 1.5, 0.5]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":18, "data":[18.0, 1.5, 0.5]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":20, "data":[18.0, 1.5, 0.5]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":22, "data":[18.0, 1.5, 0.5]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":24, "data":[18.0, 1.5, 0.5]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":26, "data":[18.0, 1.5, 0.5]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":28, "data":[18.0, 1.5, 0.5]}' -t crazyflie/landwithheight
