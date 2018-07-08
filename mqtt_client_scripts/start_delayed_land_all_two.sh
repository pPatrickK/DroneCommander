#!/bin/bash
echo Test start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":2, "data":[2.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":2, "data":[10.0, 1.5, 0.5]}' -t crazyflie/landwithheight

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":4, "data":[2.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":4, "data":[10.0, 1.5, 0.5]}' -t crazyflie/landwithheight

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":6, "data":[2.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":6, "data":[10.0, 1.5, 0.5]}' -t crazyflie/landwithheight

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":8, "data":[2.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":8, "data":[10.0, 1.5, 0.5]}' -t crazyflie/landwithheight

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":10, "data":[2.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":10, "data":[10.0, 1.5, 0.5]}' -t crazyflie/landwithheight

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":12, "data":[2.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":12, "data":[10.0, 1.5, 0.5]}' -t crazyflie/landwithheight

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":14, "data":[2.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":14, "data":[10.0, 1.5, 0.5]}' -t crazyflie/landwithheight
