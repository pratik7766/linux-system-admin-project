#!/bin/bash

echo "=============================="
echo "     SYSTEM MONITORING"
echo "=============================="

echo "Hostname: $(hostname)"
echo "Date & Time: $(date)"
echo "Uptime: $(uptime -p)"

echo
echo "CPU Load:"
uptime | awk -F'load average:' '{print $2}'

echo
echo "Memory Usage:"
free -h

echo
echo "Disk Usage:"
df -h /

echo
echo "Top 5 Processes:"
ps aux --sort=-%cpu | head -6

echo
echo "Failed System Services:"
systemctl --failed --no-pager

echo
echo "=============================="
echo "     MONITORING COMPLETE"
echo "=============================="
