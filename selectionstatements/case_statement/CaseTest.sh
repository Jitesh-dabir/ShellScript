#!/bin/bash -x

#VARIABLES
isPartTime=1
isFullTime=2
empRatePerHr=20

#GENERATE RANDOM NUMBER
empCheck=$((RANDOM%3))

#LOGIC TO CALCULATE SALARY FOR FULLTIME AND PARTTIME
case $empCheck in 
	$isFullTime)
		empHrs=8
		;;
	$isPartTime)
		empHrs=4
		;;
	*)
		empHrs=0
		;;
esac

#PRINT SALARY
salary=$(($empHrs*$empRatePerHr))
echo "Employee hours are" $empHrs "and salary is" $salary
