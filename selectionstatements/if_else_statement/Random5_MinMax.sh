#!/bin/bash 

#VARIABLES
minimum=0
maximum=0

#GENERATE RANDOM FIVE NUMBER
firstRandom=$((RANDOM%900+100))
secondRandom=$((RANDOM%900+100))
thirdRandom=$((RANDOM%900+100))
fourthRandom=$((RANDOM%900+100))
fifthRandom=$((RANDOM%900+100))

#PRINT ALL RANDOM NUMBERS
echo $firstRandom $secondRandom $thirdRandom $fourthRandom $fifthRandom

#LOGIC TO FIND MAXIMUM AND MINIMUM NUMBER
if [ $firstRandom -gt $secondRandom -a $firstRandom -gt $thirdRandom -a $firstRandom -gt $fourthRandom -a $firstRandom -gt $fifthRandom ]
then
		maximum=$firstRandom
elif [ $secondRandom -gt $thirdRandom -a $secondRandom -gt $fourthRandom -a $secondRandom -gt $fifthRandom]
then
		maximum=$secondRandom
elif [ $thirdRandom -gt $fourthRandom -a $thirdRandom -gt $fifthRandom ]
then 
		maximum=$thirdRandom
elif [ $fourthRandom -gt $fifthRandom ]
then 
		maximum=$fourthRandom
else
      maximum=$fifthRandom
fi

if [ $firstRandom -lt $secondRandom -a $firstRandom -lt $thirdRandom -a $firstRandom -lt $fourthRandom -a $firstRandom -lt $fifthRandom ]
then 
	minimum=$firstRandom
elif [ $secondRandom -lt $thirdRandom -a $secondRandom -lt $fourthRandom -a $secondRandom -lt $fifthRandom ]
then
	minimum=$secondRandom
elif [ $thirdRandom -lt $fourthRandom -a $thirdRandom -lt $fifthRandom ]
then
	minimum=$thirdRandom
elif [ $fourthRandom -lt $fifthRandom ]
then
	minimum=$fourthRandom
else
	minimum=$fifthRandom
fi
echo "Minimum:" $minimum
echo "Maximum:" $maximum


