#!/bin/bash -x

# USER INPUT FOR FACTORIAL NUMBER
read -p "Enter the number: " number

# INITIALIZE VARIABLE
factorial=1

# CALCULATE FACTORIAL
for (( index=$number; index>=1; index-- ))
do
	factorial=$(( factorial * index ))
done

# DISPLAY RESULT
echo Factorial of $number is $factorial
