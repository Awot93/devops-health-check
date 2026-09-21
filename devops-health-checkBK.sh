#!/bin/bash

# Name: WAHEED OLADUNJOYE
# Date: 16 September 2026
# Script: devops-health-check.sh
# Version: 1.0
# Purpose: Linux server health monitoring

#Handling Error
set -e
set -o pipefail

#Getting Hostname
hostname

#Getting Current User
whoami

#Getting current Date and Time
date

# getting current disk usage
df -h

#Getting Current Memory Usage
free -h

# Getting CPU count
nproc

#Getting system uptime
uptime

#Getting running process
ps -ef

#Using the GREP command
uptime | nproc

#using AWK command 
some-command | awk '{print $2}'

#USING IF_ELSE AND FOR LOOP

# 1. Grab the raw numbers directly
cores=$(nproc)
memory=$(free -g | grep Mem | awk '{print $2}')

# 2. Put just those two numbers in a simple list
for value in $cores $memory
do
    echo "Checking resource value: $value"

    # 3. Simple if-else: If the number is 4 or bigger
    if [ $value -ge 4 ]; then
        echo "Status: Good! You have plenty of this resource."
    else
        echo "Status: Low! You might need an upgrade."
    fi
done

#Performing Remote Check
curl -I https://google.com

#using FIND Command
find /etc -name "*.conf"

#using Echo command 
echo "Welcome to shell scripting command"



