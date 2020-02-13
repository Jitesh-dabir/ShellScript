#!/bin/bash -x	

#ENTER DATE AND MONTH
echo "Enter Day and Month: "
read -p " "  date
read -p " "  month
#CHECK DATE IS PRESENT BETWEEN MAR 20 - JUNE 20 IF YES THEN TRUE
if [[ $date -gt 20 && $date -le 31 && $month -eq 3 ]] || 
	[[ $date -ge 1 && $date -le 30 && $month -eq 4 ]] || 
	[[ $date -ge 1 && $date -le 31 && $month -eq 5 ]] ||
	[[ $date -ge 1 && $date -le 20 && $month -eq 6 ]]
then 
	echo "True valid date"
else
	echo "False invalid date"
fi
