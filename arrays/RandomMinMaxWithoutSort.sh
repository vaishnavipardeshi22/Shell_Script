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
	secMinVal=1000
	for i in "${randomArray[@]}"
	do
		if [ $i -lt $minVal ]
		then
			secMinVal=$minVal
			minVal=$i
		fi
		if [ $i -le $secMinVal -a $i -ne $minVal ]
		then
			secMinVal=$i
		fi
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
	secMaxVal=99
	for i in "${randomArray[@]}"
	do
		if [ $i -gt $maxVal ]
		then
			secMaxVal=$maxVal
			maxVal=$i
		fi
		if [ $i -gt $secMaxVal -a $i -ne $maxVal ]
		then
				secMaxVal=$i
		fi
	done
	echo maxVal=$maxVal
	echo secMaxVal=$secMaxVal
}

# FUNCTION CALL TO GET SECOND MAXIMUM NUMBER
getMaximum ${randomArray[@]}
