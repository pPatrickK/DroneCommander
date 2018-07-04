#!/bin/bash
echo Hello run choreography
mosquitto_pub -h gopher.phynetlab.com -p 8883 -m '"choreo"' -t crazyflie/startChoreography
