#!/bin/bash -x

#CONSTANT
WIN=11

#VARIABLE
hw=0
tw=0
flip=0

#COUNT THE HEAD OR TAIL
while [[ $tw -lt $WIN && $hw -lt $WIN ]] 
do
	random=$((RANDOM%2))
	if [ $random -eq 1 ]
	then
		((hw++))
	else
		((tw++))
	fi
done

#PRINT HEAD COUNT AND TAIL COUNT
if [ $hw -eq $WIN ]
then
	echo "Head Win"
elif [ $tw -eq $WIN ]
then
	echo "Tail Win"
fi

echo "Head Count:" $hw
echo "Tail Count:" $tw
