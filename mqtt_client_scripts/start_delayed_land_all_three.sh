#!/bin/bash
echo Test start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":15, "data":[2.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":15, "data":[10.0, 1.5, 0.5]}' -t crazyflie/landwithheight

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":17, "data":[2.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":17, "data":[10.0, 1.5, 0.5]}' -t crazyflie/landwithheight

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":19, "data":[2.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":19, "data":[10.0, 1.5, 0.5]}' -t crazyflie/landwithheight

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":21, "data":[2.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":21, "data":[10.0, 1.5, 0.5]}' -t crazyflie/landwithheight

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":23, "data":[2.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":23, "data":[10.0, 1.5, 0.5]}' -t crazyflie/landwithheight

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":25, "data":[2.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":25, "data":[10.0, 1.5, 0.5]}' -t crazyflie/landwithheight

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":29, "data":[2.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":29, "data":[10.0, 1.5, 0.5]}' -t crazyflie/landwithheight
