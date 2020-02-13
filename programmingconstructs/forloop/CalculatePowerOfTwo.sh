#!/bin/bash -x

#VARIABLE
power=1

#TAKE NUMBER FROM USER
read -p "enter n " number

#CALCULATE POWER OF TWO AND PRINT TABLE UPTO N
for (( index=1; index<=$number; index++ ))
do
	power=$(($power*2))
	echo "2 * "$index" =" $power
done

