#!/bin/bash -x

# INITIALIZE POWER VARIABLE
power=1

# CALCULATE POWER OF 2
for (( i=1; i<=$1; i++ ))
do
	power=$(( power * 2 ))
	echo $power
done
