#!/bin/bash
echo Test start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data":[2.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data":[10.0, 1.5, 0.5]}' -t crazyflie/landwithheight

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data":[2.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":3, "data":[10.0, 1.5, 0.5]}' -t crazyflie/landwithheight

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":5, "data":[2.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":5, "data":[10.0, 1.5, 0.5]}' -t crazyflie/landwithheight

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":7, "data":[2.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":7, "data":[10.0, 1.5, 0.5]}' -t crazyflie/landwithheight

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":9, "data":[2.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":9, "data":[10.0, 1.5, 0.5]}' -t crazyflie/landwithheight

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":11, "data":[2.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":11, "data":[10.0, 1.5, 0.5]}' -t crazyflie/landwithheight

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":13, "data":[2.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":13, "data":[10.0, 1.5, 0.5]}' -t crazyflie/landwithheight
