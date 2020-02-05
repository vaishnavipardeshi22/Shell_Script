#!/bin/bash -x

# TAKE USER INPUT
read -p "Enter the number for prime factorization: " number

# CALCULATE PRIME FACTORIZATION
function getPrimeFactor()
{
	for (( i=2; i<=$number; ))
	do
		if [ $(( number % i )) -eq 0 ]
		then
			number=$(( number / i ))
			echo "$i"
		else
			((i++))
		fi
	done
}

# FUNCTION CALL FOR PRIME FACTORIZATION
primeFactor="$( getPrimeFactor )"

# PRINT ARRAY
echo "Array of prime factorization: " ${primeFactor[@]}
