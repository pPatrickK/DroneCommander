#!/bin/bash
echo Test start
#-----------------------------------Gruppe 3------------------------------------

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data": [0.0, 9.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data": [0.0, 9.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":5, "data": [0.0, 9.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":7, "data": [0.0, 9.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":9, "data": [0.0, 9.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":11, "data": [0.0, 9.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":13, "data": [0.0, 9.0] }' -t crazyflie/movehome


mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data":[9.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data":[9.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":5, "data":[9.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":7, "data":[9.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":9, "data":[9.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":11, "data":[9.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":13, "data":[9.0, 1.8, 0.4]}' -t crazyflie/landwithheight
