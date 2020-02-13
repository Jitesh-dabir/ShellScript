#!/bin/bash

#GENERATE RANDOM 3 DIGIT NUMBER AND STORE INTO ARRAY 
for (( i=0; i<10; i++ ))
do
a[i]=$((RANDOM%900+100))
done
echo "Random 10 number are:"
echo "${a[@]}"

