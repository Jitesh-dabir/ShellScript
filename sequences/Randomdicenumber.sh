#!/bin/bash -x
#Generate random number between 1-6
randomNumber=$(( RANDOM%6+1))
echo "Random dice number between 1-6:" $randomNumber
