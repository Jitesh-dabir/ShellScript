#!/bin/bash -x

#TAKE NUMBER FROM USER
read -p "Enter the number:" number

#PRINT NUMBER IN WORD
case $number in
	1)
		echo "Unit"
		;;
	10)
		echo "Ten"
		;;
	100)
		echo "Hundred"
		;;
	1000)
		echo "One Thousand"
		;;
	10000)
		echo "Ten Thousand"
		;;
	100000)
		echo "Hundred Thousand"
		;;
	1000000)
		echo "One Billoins"
		;;
esac
