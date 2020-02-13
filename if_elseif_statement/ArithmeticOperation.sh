#!/bin/bash -x

# USER INPUT
read -p "Enter First Number: " input1
read -p "Enter Second Number: " input2
read -p "Enter Third Number: " input3

# ARITHMETIC OPERATIONS
result1=$(( input1 + input2 * input3 ))
echo result1=$result1
result2=$(( input1 % input2 + input3 ))
echo result2=$result2
result3=$(( input3 + input1 / input2 ))
echo result3=$result3
result4=$(( input1 * input2 + input3 ))
echo result4=$result4

#MAXIMUM NUMBER
if [ $result1 -gt $result2 -a $result1 -gt $result3 -a $result1 -gt $result4 ]
then
	echo $result1 is Maximum.
elif [ $result2 -gt $result3 -a $result2 -gt $result4 ]
then
	echo $result2 is Maximum.
elif [ $result3 -gt $result4 ]
then
	echo $result3 is Maximum.
else
	echo $result4 is Maximum.
fi

# MINIMUM NUMBER
if [ $result1 -lt $result2 -a $result1 -lt $result3 -a $result1 -lt $result4 ]
then
        echo $result1 is Minimum.
elif [ $result2 -lt $result3 -a $result2 -lt $result4 ]
then
        echo $result2 is Minimum.
elif [ $result3 -lt $result4 ]
then
        echo $result3 is Minimum.
else
        echo $result4 is Minimum.
fi
