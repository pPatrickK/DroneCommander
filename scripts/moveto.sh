#!/bin/bash
echo Hello moveTo
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":0, "data":[0.0, 4.0, [0.0, 0.0, 1.0], 0.0]}' -t crazyflie/moveto

