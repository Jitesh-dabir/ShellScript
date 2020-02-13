#!/bin/bash -x 

#CONVERT INCH TO FEET
read -p "Enter the Inch :" inch
firstResult=$(( $inch/12 ))
echo $inch " Inch is equal to" $firstResult "Feet"

#CONVERT FEET TO INCH
read -p "Enter the feet :" feet
secondResult=$(( $feet*12 ))
echo  $feet "feet is equal to " $secondResult "inch"

#FEET TO METER CONVERSION
meter=`echo  "scale=2; (60/3.2808) * (40/3.2808)" | bc`
echo "60feet * 40feet is equal to "$meter "meter"

#CONVERT AREA INTO ACRES
area=`echo "scale=2; $meter/4047 *25" | bc`
echo "Area of 25 plts in acres are "$area
