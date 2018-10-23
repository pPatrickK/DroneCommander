#!/bin/bash
echo Test 27 solo enter
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":27, "data":[0.0, 2.0, 1.4]}' -t crazyflie/start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":27, "data": [2.0, 9.0, [-2.0, -2.0, 1.4], 0.0] }' -t crazyflie/moveto
