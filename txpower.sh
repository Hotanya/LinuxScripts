#!/bin/bash

echo Check tx power
sudo iwconfig 

echo "Please set a region: "

while true
do
    read reg
    # try the command, and catch its output:
    output=$( sudo iw reg set "$reg" 2>&1 ) # 2>&1 redirects all output made on STDERR to STDOUT

    if [ -z "$output" ] #-z returns true for given argument
    then
        # output is empty - exit loop
        break
    else # output is not empty
        echo "Please set a valid region."
    fi

done


echo -e "Please choose the wireless interface to use"
read interface

echo "Setting $interface to monitor mode"
sudo airmon-ng start $interface

echo "Check tx power"
sudo iwconfig 
