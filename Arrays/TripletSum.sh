#!/bin/bash -x

# VARIABLE INITIALIZATION
count=0

# TAKE USER INPUT FOR ARRAY LIMIT
read -p "Enter the limit for array: " limit

# ENTER THE VALUES IN ARRAY FROM USER
echo "Enter the value in array: "
for (( i=0; i<$limit; i++ ))
do
	read numArray[$i]
done

# PRINT ARRAY
echo "Array is: "${numArray[@]}

# CALCULATE THE TRIPLETS WHOSE SUM IS ZERO AND PRINT COUNT OF TRIPLETS
echo  "Triplets whose sum are zero : "
for (( i=0; i<$limit; i++ ))
do
	for (( j=i+1; j<$limit; j++ ))
	do
		for (( k=j+1; k<$limit; k++ ))
		do
			if [ $(( ${numArray[i]} + ${numArray[j]} + ${numArray[k]} )) -eq 0 ]
			then
				echo  ${numArray[i]} " " ${numArray[j]} " " ${numArray[k]} 
				count=$(( count + 1 ))
			fi
		done
	done
done
echo count=$count
