#!/bin/bash -x

# INITIALIZING VARIABLE
limit=10

# FUNCTION TO FIND RANDOM NUMBERS
function calcRandomNumber()
{
	randomCheck=$(( 100 + RANDOM % 900 ))
	echo $randomCheck
}

# FUNCTION CALL FOR RANDOM NUMBER AND STORE IN ARRAY
for (( i=0; i<$limit; i++ ))
{
	randomArray[$i]="$( calcRandomNumber )"
}

# FUNCTION TO SORT ARRAY
function sortArray()
{
	for (( i=0; i<$limit; i++ ))
	{
		for (( j=0; j<$limit-1; j++ ))
		{
			if [ ${randomArray[j+1]} -lt ${randomArray[j]} ]
			then
				temp=${randomArray[j]}
				randomArray[j]=${randomArray[j+1]}
			   randomArray[j+1]=$temp
			fi
		}
	}
      echo ${randomArray[@]}
}

# FUNCTION CALL FOR SORT ARRAY
sortArray ${randomArray[@]}

# PRINT SECOND MINIMUM AND MAXIMUM VALUE
echo secMinVal=${randomArray[1]}
echo secMaxVal=${randomArray[8]}
