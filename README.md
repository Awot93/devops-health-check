# DevOps Server Health Check Script

Name: Waheed Oladunjoye
Script: devops-health-check.sh
Version: 2.0

## What it does
This script checks basic server health. It prints the hostname,
current user, date and time, disk usage, memory usage, CPU count,
uptime, running processes, load average, listening ports, and a search
for .conf files in /etc. It also does a simple check on CPU cores and
memory to flag if either is low, and a quick check to see if the
server can reach the internet.

## How to run
```
chmod +x devops-health-check.sh
./devops-health-check.sh
```

If you get a shebang error, the file probably has Windows line endings.
Fix with:
```
sed -i 's/\r$//' devops-health-check.sh
```

## Requirements
- Bash
- Standard Linux commands: df, free, nproc, uptime, ps, curl, find, netstat
