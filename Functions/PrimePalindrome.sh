#!/bin/bash -x

# TAKE USER INPUT
read -p "Enter the number: " number

# ASSIGN INPUT TO ANOTHER VARIABLE
originalNumber=$number

# INITIALIZE VARIABLE
reverse=0
count=0

# FUNCTION TO CHECK PRIME NUMBER
function isPrime()
{
	for (( i=1; i<=$number; i++ ))
do
	if [ $(( number % i )) -eq 0 ]
	then
		count=$(( count + 1 ))
	fi
done

if [ $count -eq 2 ]
then
	echo $number is Prime Number

	# FUNCTION CALL TO CHECK PALINDROME OF PRIME NUMBER
	echo "$( isPalindrome $number )"
else
	echo $number is not prime Number
fi
}

# FUNCTION TO CHECK PALINDROME
function isPalindrome()
{
	while [ $number -ne 0 ]
	do
		remainder=$(( $number % 10 ))
		reverse=$(( reverse * 10 +remainder ))
		number=$(( $number / 10 ))
	done
	echo $reverse

	if [ $originalNumber -eq $reverse ]
	then
		echo "Number is Palindrome"
	else
		echo "Number is not Palindrome"
	fi
}

# FUNCTION CALL FOR TO CHECK USER INPUT IS PRIME OR NOT
echo "$( isPrime $number )"

# FUNCTION CALL FOR TO CHECK PALINDROME IS PRIME OR NOT
echo "$( isPrime $reverse )"
