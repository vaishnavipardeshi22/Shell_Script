#!/bin/bash -x

# VARIABLE INITIALIZATION
limit=50

# DECLARE DICTIONARY
declare -A month

# CALCULATE 50 RANDOM MONTHS
for (( i=1; i<=$limit; i++ ))
do
	random=$(( 1 + RANDOM % 12 ))
	month[$random]=$(( ${month[$random]} + 1 ))
done

# DISPLAY INDIVIDUALS HAVING BIRTHDAYS IN THE SAME MONTH
for (( i=1; i<=12; i++ ))
do
	echo $i=${month[$i]}
done

