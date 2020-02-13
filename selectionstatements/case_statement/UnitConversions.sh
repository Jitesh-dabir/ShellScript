#!/bin/bash 

#TAKE USER INPUT
echo "Select Your Choice: "
echo "1.Feet to Inch"
echo "2.Inch to Feet"
echo "3.Feet to Meter"
echo "4.Meter to Feet"
read -p " " choice

#CONVERSION AND PRINT RESULT
case $choice in
	1)
		read -p  "Enter the feet" firstFeet
		InchFeet=`echo "scale=2; $firstFeet*12" |bc`
		echo $firstFeet " feet is equal to" $InchFeet	"inch"
		;;
	2)
		read -p  "Enter the inch" inch
		FeetInch=`echo "scale=2; $inch/12" |bc`
		echo $inch "inch is equal to " $FeetInch "feet"
	 	;;
	3)
		read -p  "Enter the feet" secondFeet
		MeterFeet=`echo "scale=2; $secondFeet/3.2808" |bc`
		echo $secondFeet "feet is rqual to" $MeterFeet "meter"
		;;
	4)
		read -p  "Enter the meter" meter
		FeetMeter=`echo "scale=2; $meter*3.2808" |bc`
		echo $meter "meter is equal to" $FeetMeter "feet"
		;;
esac
