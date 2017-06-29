!#/bin/bash

echo Your current region setting
sudo iw reg get
echo

echo Setting region as BO
sudo iw reg set BO
echo

sudo iwconfig wlan0 
