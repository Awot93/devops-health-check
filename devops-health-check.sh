#!/bin/bash

# Name: WAHEED OLADUNJOYE
# Date: 21 September 2026
# Script: devops-health-check.sh
# Version: 2.0
# Purpose: Linux server health monitoring

#Handling Error
set -e
set -o pipefail

echo "----- HOSTNAME -----"
hostname

echo "----- CURRENT USER -----"
whoami

echo "----- DATE AND TIME -----"
date

echo "----- DISK USAGE -----"
df -h

echo "----- MEMORY USAGE -----"
free -h

echo "----- CPU COUNT -----"
nproc

echo "----- UPTIME -----"
uptime

echo "----- RUNNING PROCESSES -----"
ps -ef | head -n 10

#Using the GREP command
echo "----- LOAD AVERAGE -----"
uptime | grep -o "load average.*"

#using AWK command
echo "----- LISTENING PORTS -----"
netstat -tulpn | awk '{print $1, $4}'

#USING IF_ELSE AND FOR LOOP
echo "----- RESOURCE CHECK -----"

# 1. Grab the raw numbers directly
cores=$(nproc)
memory=$(free -g | grep Mem | awk '{print $2}')

# 2. Put just those two numbers in a simple list
for value in $cores $memory
do
    echo "Checking resource value: $value"

    # 3. Simple if-else: If the number is 4 or bigger
    if [ "$value" -ge 4 ]; then
        echo "Status: Good! You have plenty of this resource."
    else
        echo "Status: Low! You might need an upgrade."
    fi
done

#Performing Remote Check
echo "----- REMOTE CHECK -----"
curl -I https://google.com || echo "Remote check failed, no internet?"

#using FIND Command
echo "----- CONFIG FILES -----"
find /etc -name "*.conf" | head -n 15

#using Echo command
echo "Health check complete."
