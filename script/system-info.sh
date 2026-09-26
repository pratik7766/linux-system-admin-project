#!/bin/bash

echo "=============================="
echo "     SYSTEM INFORMATION"
echo "=============================="

echo "Hostname: $(hostname)"

echo "Operating System: $(grep '^PRETTY_NAME=' /etc/os-release | cut -d '"' -f2)"

echo "Kernel: $(uname -r)"

echo "Architecture: $(uname -m)"

echo "Uptime: $(uptime -p)"

echo "Current User: $(whoami)"

echo "IP Address: $(hostname -I | awk '{print $1}')"

echo "Memory Usage:"
free -h

echo "Disk Usage:"
df -h /

echo "=============================="
