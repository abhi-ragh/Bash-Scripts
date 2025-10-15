#!/bin/bash
status=$(systemctl status captivelogin.service | grep Active | awk '{print $2 $3}')
echo $status
