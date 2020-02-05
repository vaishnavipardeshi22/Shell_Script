#!/bin/bash -x

# INITIALIZING  VARIABLE
limit=10

# FUNCTION TO FIND RANDOM NUMBERS
function calcRandomNumber()
{
	randomCheck=$(( 100 + RANDOM % 900 ))
	echo $randomCheck
}

# FUNCTION CALL FOR RANDOM NUMBER AND STORE IN ARRAY
for(( i=0; i<$limit; i++ ))
{
	randomArray[$i]="$( calcRandomNumber )"
}

# PRINT ARRAY OF RANDOM NUMBERS
echo "Random Numbers:" ${randomArray[@]}

# FUNCTION TO CALCULATE SECOND MINIMUM NUMBER
function getMinimum()
{
	minVal=${randomArray[0]}
	secMinVal=${randomArray[0]}
	for i in "${randomArray[@]}"
	do
		for j in "${randomArray[@]}"
		do
			if [ $j -lt $minVal ]
			then
				minVal=$j
			fi
			if [ $j -le $secMinVal -a $j -ne $minVal ]
			then
				secMinVal=$j
			fi
		done
	done
	echo minVal=$minVal
	echo secMinVal=$secMinVal
}

# FUNCTION CALL TO GET SECOND MINIMUM VALUE
getMinimum ${randomArray[@]}

# FUNCTION TO CALCULATE SECOND MAXIMUM NUMBER
function getMaximum()
{
	maxVal=${randomArray[0]}
	secMaxVal=${randomArray[0]}
	for i in "${randomArray[@]}"
	do
		for j in "${randomArray[@]}"
		do
			if [ $j -gt $maxVal ]
			then
				maxVal=$j
			fi
			if [ $j -gt $secMaxVal -a $j -ne $maxVal ]
			then
				secMaxVal=$j
			fi
		done
	done
	echo maxVal=$maxVal
	echo secMaxVal=$secMaxVal
}

# FUNCTION CALL TO GET SECOND MAXIMUM NUMBER
getMaximum ${randomArray[@]}
