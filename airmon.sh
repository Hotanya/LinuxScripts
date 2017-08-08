#!/bin/bash

sudo iwconfig
sudo airmon-ng

echo -e "\e[32mPlease choose the wireless interface to use"

read interface

sudo airmon-ng start $interface
echo -e "\e[32mStarting" $interface "as" $interface"mon"

