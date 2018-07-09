#!/bin/bash
echo Test start
#----------------------------------Gruppe 5-------------------------------------
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":26, "data": [0.0, 6.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":26, "data":[6.0, 1.8, 0.4]}' -t crazyflie/landwithheight


mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":25, "data": [2.0, 9.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":29, "data": [2.0, 9.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":11, "data": [2.0, 9.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":13, "data": [2.0, 9.0] }' -t crazyflie/movehome


mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":25, "data":[11.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":29, "data":[11.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":11, "data":[11.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":13, "data":[11.0, 1.8, 0.4]}' -t crazyflie/landwithheight

#-----------------------------------Gruppe 4------------------------------------

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":2, "data": [8.0, 5.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":4, "data": [8.0, 5.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":6, "data": [8.0, 5.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":8, "data": [8.0, 5.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":10, "data": [8.0, 5.0] }' -t crazyflie/movehome


mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":2, "data":[13.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":4, "data":[13.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":6, "data":[13.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":8, "data":[13.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":10, "data":[13.0, 1.8, 0.4]}' -t crazyflie/landwithheight

#-----------------------------------Gruppe 3------------------------------------

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data": [9.0, 6.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data": [9.0, 6.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":5, "data": [9.0, 6.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":7, "data": [9.0, 6.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":9, "data": [9.0, 6.0] }' -t crazyflie/movehome


mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data":[15.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data":[15.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":5, "data":[15.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":7, "data":[15.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":9, "data":[15.0, 1.8, 0.4]}' -t crazyflie/landwithheight

#-----------------------------------Gruppe 2------------------------------------

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":16, "data": [10.0, 7.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":18, "data": [10.0, 7.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":20, "data": [10.0, 7.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":22, "data": [10.0, 7.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":24, "data": [10.0, 7.0] }' -t crazyflie/movehome


mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data":[17.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data":[17.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":5, "data":[17.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":7, "data":[17.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":9, "data":[17.0, 1.8, 0.4]}' -t crazyflie/landwithheight


#-----------------------------------Gruppe 1------------------------------------

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":15, "data": [12.0, 7.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":17, "data": [12.0, 7.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":19, "data": [12.0, 7.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":21, "data": [12.0, 7.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":23, "data": [12.0, 7.0] }' -t crazyflie/movehome


mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":15, "data":[19.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":17, "data":[19.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":19, "data":[19.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":21, "data":[19.0, 1.8, 0.4]}' -t crazyflie/landwithheight
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":23, "data":[19.0, 1.8, 0.4]}' -t crazyflie/landwithheight
