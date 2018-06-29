#!/bin/bash
echo Hello land
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":1, "data": [0.0, 3.0]}' -t crazyflie/land
