#!/bin/bash
echo Leave matrix start
#-----------------------------------Gruppe 4------------------------------------

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":2, "data": [0.0, 7.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":4, "data": [0.0, 7.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":6, "data": [0.0, 7.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":8, "data": [0.0, 7.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":10, "data": [0.0, 7.0] }' -t crazyflie/movehome


mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":2, "data":[7.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":4, "data":[7.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":6, "data":[7.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":8, "data":[7.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":10, "data":[7.0, 1.8, 0.4]}' -t crazyflie/landwithheight

#-----------------------------------Gruppe 3------------------------------------

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data": [4.0, 7.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data": [4.0, 7.0] }' -t crazyflie/movehome
# mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":12, "data": [4.0, 7.0] }' -t crazyflie/movehome
# mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":7, "data": [4.0, 7.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":14, "data": [4.0, 7.0] }' -t crazyflie/movehome


mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data":[11.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data":[11.0, 1.8, 0.4]}' -t crazyflie/landwithheight
# mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":12, "data":[11.0, 1.8, 0.4]}' -t crazyflie/landwithheight
# mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":7, "data":[11.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":14, "data":[11.0, 1.8, 0.4]}' -t crazyflie/landwithheight

#-----------------------------------Gruppe 2------------------------------------

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":16, "data": [6.0, 7.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":18, "data": [6.0, 7.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":20, "data": [6.0, 7.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":26, "data": [6.0, 7.0] }' -t crazyflie/movehome
# mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":27, "data": [6.0, 7.0] }' -t crazyflie/movehome


mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":16, "data":[13.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":18, "data":[13.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":20, "data":[13.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":26, "data":[13.0, 1.8, 0.4]}' -t crazyflie/landwithheight
# mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":27, "data":[13.0, 1.8, 0.4]}' -t crazyflie/landwithheight


#-----------------------------------Gruppe 1------------------------------------

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":15, "data": [11.0, 7.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":17, "data": [11.0, 7.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":25, "data": [11.0, 7.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":21, "data": [11.0, 7.0] }' -t crazyflie/movehome
# mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":23, "data": [11.0, 7.0] }' -t crazyflie/movehome


mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":15, "data":[18.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":17, "data":[18.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":25, "data":[18.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":21, "data":[18.0, 1.8, 0.4]}' -t crazyflie/landwithheight
# mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":23, "data":[18.0, 1.8, 0.4]}' -t crazyflie/landwithheight
