#!/bin/bash -x

# INITIALIZE VARIABLE SUM
sum=0

# CALCULATE HARMONIC NUMBER
for (( i=1; i<=$1; i++ ))
do
	 sum=$(echo "scale=2; $sum + 1 / $i" | bc) 
done

# DISPLAY RESULT
echo sum=$sum
