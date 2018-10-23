#!/bin/bash
echo Test 27 solo leave
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":27, "data": [0.0, 9.0] }' -t crazyflie/movehome
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":27, "data":[9.0, 1.8, 0.4]}' -t crazyflie/landwithheight
