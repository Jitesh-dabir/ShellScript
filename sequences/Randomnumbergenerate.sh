#! /bin/bash -x

#GENERATE RANDOM NUMBER
randomNumber=$(( RANDOM%100 ))

#PRINT RANDOM NUMBER
echo "Single digit random number is :" $randomNumber 
