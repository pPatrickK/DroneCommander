#!/bin/bash
echo Hello start
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '{"id":32, "data":[0.0, 1.5, 1.0]}' -t crazyflie/start
