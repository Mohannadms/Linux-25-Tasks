#!/bin/bash

read -p "Enter a number to countdown from: $num" num
while [ "$num" -gt 0 ]
do
sleep 1
((num--))
done

echo "Time's up!"
