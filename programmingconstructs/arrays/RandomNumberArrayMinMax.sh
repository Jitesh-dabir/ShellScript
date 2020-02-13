#!/bin/bash  -x

#VARIABLES
max=0
Smax=0
min=999
Smin=999

#GENERATE RANDOM 3 DIGIT NUMBER AND STORE INTO ARRAY 
for (( i=0; i<10; i++ ))
do
	a[i]=$((RANDOM%900+100))
done
echo "Random 10 number are:"
echo "${a[@]}"

#FIND MAXIMUM AND SECOND MAXIMUM
for (( i=0; i<10; i++ ))
do
	if [ $((a[i])) -gt $max ]
	then
		Smax=$max
		max=$((a[i]))
	elif [ $((a[i])) -gt $Smax -a $((a[i])) -lt $max ]
	then
		Smax=$((a[i]))
	fi 
done

#FIND MINIMUM AND SECOND MINIMUM
for (( i=0; i<10; i++ ))
do
	if [ $((a[i])) -lt $min ]
	then
		Smin=$min
		min=$((a[i]))
	elif [ $((a[i])) -lt $Smin -a $((a[i])) -gt $min ]
	then
		Smin=$((a[i]))
	fi 
done

#PRINT MAXIMUM AND SECONDMAXIMUM AND MINIMUM AND SECONDMINIMUM
echo "maximum:" $max
echo "Second Maximum:"$Smax
echo "manimum:" $min
echo "Second Minimum:" $Smin


