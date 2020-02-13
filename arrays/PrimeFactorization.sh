#!/bin/bash -x

# TAKE USER INPUT
read -p "Enter the number for prime factorization: " number

# CALCULATE PRIME FACTORIZATION
function getPrimeFactor()
{
	for (( index=2; index<=$number; ))
	do
		if [ $(( number % index )) -eq 0 ]
		then
			number=$(( number / index ))
			echo "$index"
		else
			((index++))
		fi
	done
}

# FUNCTION CALL FOR PRIME FACTORIZATION
primeFactor="$( getPrimeFactor )"

# PRINT ARRAY
echo "Array of prime factorization: " ${primeFactor[@]}
