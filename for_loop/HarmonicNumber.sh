#!/bin/bash -x

# INITIALIZE VARIABLE SUM
sum=0

# CALCULATE HARMONIC NUMBER
for (( index=1; index<=$1; index++ ))
do
	 sum=$(echo "scale=2; $sum + 1 / $index" | bc) 
done

