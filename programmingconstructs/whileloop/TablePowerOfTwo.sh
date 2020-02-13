#!/bin/bash

#VARIABLES
index=1
count=256
power=1

#LOGIC TO PRINT TABLE OF TWO UNTIL RESULT IS 256
read -p "Enter a number" number
while [[ $power -lt $count && $number -ne $count ]]
do
	echo "2 *" $index "=" $power
	((index++))
	power=$(($power*2))
done
echo "2 *" $index "=" $power
