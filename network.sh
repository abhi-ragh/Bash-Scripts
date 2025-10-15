#!/bin/bash
echo $(date) :  $(ping 8.8.8.8 -c 10 | awk -F'/' '/rtt/ {print $5}') ms >> ping.log

