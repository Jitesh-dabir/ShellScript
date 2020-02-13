#! /bin/bash -x
#program to print  week 
read -p "Enter a number" weeknumber

case $weeknumber in
	1)
		echo "Sunday"
		;;
	2)
		echo "Monday"
		;;
	3)
		echo "Tuesday"
		;;
	4)
		echo "WednesDay"
		;;
	5)
		echo "Thursday"
		;;
	6)
		echo "Friday"
		;;
	7)
		echo "Saturday"
		;;
	*)
		echo "Only seven days in week:)"
		;;
esac

