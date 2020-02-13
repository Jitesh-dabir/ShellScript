#!/bin/bash -x

#VARIABLE
start=0
end=100

#LOGIC TO FIND MAGIC NUMBER
read -p "Enter random no between 1-100 " number
middle=$(($(($start+$end-1))/2))
echo $middle " is your number "
read -p "No then Enter (g)-greter or (l)-less or (y)-yess" choice

while [[ $start<=$end && $middle -ne $number ]]
do
	case $choice in	
		"g")
			start=$(($middle+1))
			;;

		"l")
			end=$(($middle-1))
			;;

		"y")
			echo "your magic number is" $middle
			break
			;;
	esac
	if [ $middle -eq $number ]
	then
		echo $m " is your number but you enter wrong choice.... "
	fi
	if [ $start -le $end ]
	then
		middle=$(($(($start+$end))/2))
		echo $middle " is your number "
		read -p "No then Enter (g)-greter or (l)-less or (y)-yess" choice
	fi
done

