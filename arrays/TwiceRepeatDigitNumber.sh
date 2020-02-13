#!/bin/bash -x

# CALCULATING NUMBERS WHOSE DIGITS ARE SAME LIKE 11,22,33 ETC
for (( i=0; i<=100; i++ ))
do
	if [ $i -ne 0 ]
	then
		if [ $(( i % 11 )) -eq 0 ]
		then
			twiceDigitArray[i]=$i
		fi
	fi
done

# DISPLAY aRRAY
echo ${twiceDigitArray[@]}

