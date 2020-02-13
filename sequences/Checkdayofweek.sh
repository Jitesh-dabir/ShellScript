#!/bin/bash -x

#TAKE MONTH FROM USER i.e 6'TH FEB 2020
echo "Enter Date  i.e 6'th feb 2020 : date:6 month:2020"
read -p "Enter date:" date
read -p "Enter Month:" month
read -p "Enter Year:" year

#LOGIC TO CALCULATE DAY
yearresult=$(($year-(14-$month)/12 ))
xresult=$(($yearresult+($yearresult/4)-($yearresult/100)+($yearresult/400) ))
monthresult=$(($month+12*((14-$month)/12)-2))
dayresult=$((($date+$xresult+31*$monthresult/12)%7))

#PRINT THE DAY OF WEEK
if [ $dayresult -eq 0 ]
   then
	echo "Day is Sunday"
   elif [ $dayresult -eq 1 ]
   then
 	echo "Day is Monday"
   elif [ $dayresult -eq 2 ]
   then 
   echo "Day is TuesDay"
   elif [ $dayresult -eq 3 ]
		then
 	echo "Day is WednesDay"
   elif [ $dayresult -eq 4 ]
   then 
	echo "Day is ThrusDay"
   elif [ $dayresult -eq 5 ]
   then
 	echo "Day is Friday"
   elif [ $dayresult -eq 6 ]
   then 
	echo "Day is Saturday"
fi

