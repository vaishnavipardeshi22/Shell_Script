#!/bin/bash -x

# CALCULATING NUMBERS WHOSE DIGITS ARE SAME LIKE 11,22,33 ETC
for (( index=0; index<=100; index++ ))
do
	if [ $index -ne 0 ]
	then
		if [ $(( index % 11 )) -eq 0 ]
		then
			twiceDigitArray[index]=$index
		fi
	fi
done

# DISPLAY aRRAY
echo ${twiceDigitArray[@]}

