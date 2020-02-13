#!/bin/bash -x

# TAKE USER INPUT 
read -p "Enter the number: " number

# INITIALIZING COUNT VARIABLE
count=0

# CALCULATE TO FIND NUMBER IS PRIME OR NOT
for (( index=1; index<=$number; index++ ))
do
	if [ $(( number % index )) -eq 0 ]
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
