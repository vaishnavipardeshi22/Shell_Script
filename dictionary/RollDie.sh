#!/bin/bash -x

# VARIABLE INITIALIZATION
random=0

# DECLARE DICTIONARY
declare -A rollDie

# STORE COUNT OF DIE ROLL IN DICTIONARY
while [[ ${rollDie[$random]} -ne 10 ]]
do
	random=$(( 1 + RANDOM % 6 ))
	rollDie[$random]=$(( ${rollDie[$random]} + 1 ))
done

# VARIABLE INITIALIZATION FOR MINIMUM AND MAXIMUM COUNT OF DICE AND DICE NUMBER
minCount=${rollDie[1]}
maxCount=${rollDie[1]}
minDieNum=1
maxDieNum=1

# CALCULATING DICE NUMBER WHO REACH MAXIMUM AND MINIMUM COUNT
for (( i=1; i<${#rollDie[@]}; i++))
do
	if [[ $minCount -gt ${rollDie[$((i+1))]} ]]
	then
		minCount=${rollDie[$((i+1))]}
		minDieNum=$((i+1))
	fi
	if [[ ${rollDie[$((i+1))]} -gt $maxCount ]]
	then
		maxCount=${rollDie[$((i+1))]}
		maxDieNum=$((i+1))
	fi
done
