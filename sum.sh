#!/bin/bash
sum=0
if [ $# -gt 0 ]; then
for i in $@; do
sum=$(($sum+$i))
done
echo "Sum = $sum"
else
echo "No Arguments"
fi
