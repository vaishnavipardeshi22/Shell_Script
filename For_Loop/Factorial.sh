#!/bin/bash -x

# USER INPUT FOR FACTORIAL NUMBER
read -p "Enter the number: " number

# INITIALIZE VARIABLE
factorial=1

# CALCULATE FACTORIAL
for (( i=$number; i>=1; i-- ))
do
	factorial=$(( factorial * i ))
done

# DISPLAY RESULT
echo Factorial of $number is $factorial
