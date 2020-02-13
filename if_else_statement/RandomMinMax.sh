#!/bin/bash -x

# VARIABLE
limit=5
minVal=999
maxVal=100

# FIND 3 DIGIT MINIMUM AND MAXIMUM NUMBER
while [ $limit -ne 0 ]
do
	randomCheck=$(( 100 + RANDOM % 900 ))
	echo $randomCheck
	if [ $randomCheck -gt $maxVal ]
	then
		 maxVal=$randomCheck
	fi

	if [ $randomCheck -lt $minVal ]
	then
		 minVal=$randomCheck
	fi
	limit=$(( $limit - 1 ))
done

# PRINT MINIMUM AND MAXIMUM RANDOM NUMBER
echo maxVal=$maxVal
echo minVal=$minVal
