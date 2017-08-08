#!/bin/bash

echo "Check tx power"
sudo iwconfig 

echo "Please set a region: "
read reg

echo "Setting reg as $reg"
sudo iw reg set $reg

echo -e "Please choose the wireless interface to use"
read interface

echo "Setting $interface to monitor mode"
sudo airmon-ng start $interface

echo "Check tx power"
sudo iwconfig 
