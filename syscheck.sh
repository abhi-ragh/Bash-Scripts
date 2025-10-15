#!/bin/bash
echo "System Check in Progress"
echo ""
echo "System Details"
uname -a
echo ""
echo "Users Logged in"
whoami
echo ""
echo "Uptime"
uptime
echo ""
echo "Disk Space Used: "
df -h
echo ""
echo "Ram Usage"
free -h 

