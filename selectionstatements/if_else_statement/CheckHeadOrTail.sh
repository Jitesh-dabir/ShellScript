#!/bin/bash -x

#GENERATE RANDOM NUMBER
randomNumber=$(( RANDOM%2 ))

#VARIABLE
isFlip=0

#CHECK HEAD OR TAIL
if [ $randomNumber -eq $isFlip ]
then
	echo "Head"
else
	echo "Tail"
fi

