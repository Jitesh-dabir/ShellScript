#!/bin/bash -x

#VARIABLE
res=1

#TAKE NUMBER FROM USER
read -p  "Enter a number :" number

#PRINT HARMONIC NUMBER
for (( i=1; i<=$number; i++))
do
	num=1/$i
	res=`echo "scale=2;$res+$num" | bc `
	echo -n "1/$i +"
done

#PRINT ADDITION OF N'TH HARMONIC NUMBER
echo "Addition upto" 1/$number" harmonic number is" $res
