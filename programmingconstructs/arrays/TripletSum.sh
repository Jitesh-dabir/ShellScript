#!/bin/bash -x

#VARIABLE
sum=0

# TAKE USER INPUT FOR ARRAY LIMIT
read -p "Enter size of array:" size

# ENTER THE VALUES IN ARRAY FROM USER
for (( index3=0; $index3<$size; index3++))
do
	read -p  "Enter elemets in array:" element 
	array[index3]=$(($element))
done

# PRINT ARRAY
echo "${array[@]}"

# CALCULATE THE TRIPLETS WHOSE SUM IS ZERO AND PRINT COUNT OF TRIPLETS
echo "Three integer having sum equal to 0 are:"
for (( index=0; $index<$size; index++ ))
do
	for (( index1=$index+1; $index1<$size; index1++ ))
	do
		for (( index2=$index1+1; $index2<$size; index2++ ))
		do
			if [ $(($((array[index]))+$((array[index1]))+$((array[index2])))) -eq 0 ]
			then
				echo "$((array[index])) $((array[index1])) $((array[index2]))"
			fi 
		done
	done
done

