#! /bin/bash 
read -p "enter stake" stake
read -p "enter Goal" goal
read -p "enter Number of trail" noOfTrial

#VARIABLE
bet=0
win=0
lose=0
cash=0
count=0

# CALCULATE BET COUNT AND WIN COUNT
for (( index=0;index<noOfTrial; index++ ))
do
	cash=$stake 
	while [[ $cash -ge 0 && $cash -lt $goal ]] 
	do
		((bet++))
		randomnumber=$((RANDOM%2))
		if [ $randomnumber -eq 0 ]
		then
			((cash++))
		else
			((cash--))
		fi
	done

	if [ $cash -eq $goal ]
	then
		((win++))
	else
		((lose++))
	fi
	echo "cash" $cash " in pass" $(($count+1))
	((count++))
done

#PRINT WIN AND LOSE AND CASH
echo "bets" $bet
echo "win" $win "times"
echo "lose" $lose "times"
echo "cash at End of game" $cash
