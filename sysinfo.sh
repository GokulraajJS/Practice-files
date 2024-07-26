#!/bin/bash

#Check CPU Usage

echo "CPU usage:$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')%"
