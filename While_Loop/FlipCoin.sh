#!/bin/bash -x

# INITIALIZE VARIABLE
head=1
tail=0
counter1=0
counter2=0

# CALCULATE COUNT OF HEADS AND TAILS
while [ $counter1 -le 10 -a $counter2 -le 10 ]
do
	flipCheck=$(( RANDOM % 2 ))
	case $flipCheck in
		$head)
			((counter1++))
		;;
		*)
			((counter2++))
		;;
	esac
done

# CHECK FLIP COIN WINNER
if [ $counter1 -eq 11 ]
then
	echo Head Wins
elif [$counter2 -eq 11 ]
then
	echo Tail Wins
else
	echo Tie
fi
