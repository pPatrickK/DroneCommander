#!/bin/bash
echo Test start

#-----------------------------------Gruppe 4------------------------------------

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":8, "data": [0.0, 9.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":14, "data": [0.0, 9.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":15, "data": [0.0, 9.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":17, "data": [0.0, 9.0] }' -t crazyflie/movehome


mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":8, "data":[11.5, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":14, "data":[11.5, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":15, "data":[11.5, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":17, "data":[11.5, 1.8, 0.4]}' -t crazyflie/landwithheight

#-----------------------------------Gruppe 3------------------------------------

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":6, "data": [3.0, 9.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":10, "data": [3.0, 9.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":16, "data": [3.0, 9.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":18, "data": [3.0, 9.0] }' -t crazyflie/movehome


mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":6, "data":[12.5, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":10, "data":[12.5, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":16, "data":[12.5, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":18, "data":[12.5, 1.8, 0.4]}' -t crazyflie/landwithheight

#-----------------------------------Gruppe 2------------------------------------

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":2, "data": [6.0, 9.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":4, "data": [6.0, 9.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":20, "data": [6.0, 9.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":25, "data": [6.0, 9.0] }' -t crazyflie/movehome


mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":2, "data":[15.5, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":4, "data":[15.5, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":20, "data":[15.5, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":25, "data":[15.5, 1.8, 0.4]}' -t crazyflie/landwithheight


#-----------------------------------Gruppe 1------------------------------------

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data": [9.0, 9.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data": [9.0, 9.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":21, "data": [9.0, 9.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":26, "data": [9.0, 9.0] }' -t crazyflie/movehome


mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data":[18.5, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data":[18.5, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":21, "data":[18.5, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":26, "data":[18.5, 1.8, 0.4]}' -t crazyflie/landwithheight
