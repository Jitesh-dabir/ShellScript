#!/bin/bash -x 

#CONVERT INCH TO FEET
read -p "Enter the Inch :" inch
value=$(( $inch/12 ))
echo $inch " Inch is equal to" $value "Feet"

