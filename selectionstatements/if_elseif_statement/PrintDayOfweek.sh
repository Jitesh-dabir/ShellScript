#!/bin/bash

#TAKE NUMBER FROM USER
read -p "Enter a number to Check week:" week

#LOGIC TO PRINT DAY OF WEEK
if [ $week -eq 1 ]
then 
	echo "Sunday"
elif [ $week -eq 2 ]
then
	echo "Monday"
elif [ $week -eq 3 ]
then 
	echo "Tuesday"
elif [ $week -eq 4 ]
then 
	echo "Wednesday"
elif [ $week -eq 5 ]
then 
	echo "Thursday"
elif [ $week -eq 6 ]
then 
	echo "Friday"
elif [ $week -eq 7 ]
then 
	echo "Saturday"
fi

