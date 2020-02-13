#!/bin/bash -x

# TAKE USER INPUT 
read -p "Enter the number: " number

# INITIALIZING COUNT VARIABLE
count=0

# CALCULATE TO FIND NUMBER IS PRIME OR NOT
for (( i=1; i<=$number; i++ ))
do
	if [ $(( number % i )) -eq 0 ]
	then
		count=$(( count + 1 ))
	fi
done

if [ $count -eq 2 ]
then
	echo $number is Prime Number
else
	echo $number is not prime Number
fi
