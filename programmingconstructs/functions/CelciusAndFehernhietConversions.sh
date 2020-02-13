#!/bin/bash -x

#FUNCTION TO CONVERT DEGREE TO FEHRENHIET
function celtofer()
{
	temp=$1
	degF=$(( $(($temp*9/5))+32 ))
	echo $degF
}
#FUNCTION  TO CONVERT FEHRENHIET TO DEGREE
function fertocel()
{
	temp=$1
	degC=$(($(($temp-32))/$((5/9))))
	echo $degC
}

#TAKE CHOICE FROM USER
echo "Enter choice" 
echo " 1 Convert Degree to Fehrenhiet"
echo " 2 Conert Fehrenhiet to degree "
read -p "Your choice ?" ch
read -p "Enter a value to convert"
case $ch in
	1)
		res="$( celtofer $(($val)))"
		echo "Value into Fehrenheit" $res
		;;
	2)
		res="$( celtofer $(($val)))"
		echo "Value into Celcius"  $res
		;;
esac
