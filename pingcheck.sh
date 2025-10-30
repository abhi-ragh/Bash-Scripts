#!/bin/bash
while true; do
ping=$(ping -c 1 8.8.8.8 | awk -F'[ =]' '/time/ {print int($10)}')
if [ -n "$ping" ]; then
echo "$ping"
if [ "$ping" -gt 100 ]; then
notify-send "High Ping: $ping ms"
fi
else
notify-send "No Internet"
fi  
sleep 10
done
