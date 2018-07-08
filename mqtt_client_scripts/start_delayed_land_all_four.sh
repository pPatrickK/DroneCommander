#!/bin/bash
echo Test start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":16, "data":[2.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":16, "data":[10.0, 1.5, 0.5]}' -t crazyflie/landwithheight

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":18, "data":[2.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":18, "data":[10.0, 1.5, 0.5]}' -t crazyflie/landwithheight

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":20, "data":[2.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":20, "data":[10.0, 1.5, 0.5]}' -t crazyflie/landwithheight

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":22, "data":[2.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":22, "data":[10.0, 1.5, 0.5]}' -t crazyflie/landwithheight

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":24, "data":[2.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":24, "data":[10.0, 1.5, 0.5]}' -t crazyflie/landwithheight

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":26, "data":[2.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":26, "data":[10.0, 1.5, 0.5]}' -t crazyflie/landwithheight

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":28, "data":[2.0, 2.0, 1.5]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":28, "data":[10.0, 1.5, 0.5]}' -t crazyflie/landwithheight
