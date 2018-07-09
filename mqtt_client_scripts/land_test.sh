#!/bin/bash
echo Test start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data":[0.0, 2.0, 1.4]}' -t crazyflie/start

mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data":[2.0, 1.8, 0.5]}' -t crazyflie/landwithheight #dauer fürs landen ist hinten!!!

#mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data":[3.5, 0.01, 0.3]}' -t crazyflie/landwithheight
