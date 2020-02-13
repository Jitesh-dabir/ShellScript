#!/bin/bash -x

#VARIABLE
pow=1

#TAKE NUMBER FROM USER
read -p "enter n " number

#CALCULATE POW OF TWO AND PRINT TABLE UPTO N
for (( c=1; c<=$number; c++ ))
do
	pow=$(($pow*2))
	echo "2 * "$c" =" $pow
done

