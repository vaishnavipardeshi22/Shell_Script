
#!/bin/bash -x

# TAKE USER INPUT
read -p "Enter the number to check palindrome: " number

# ASSIGN INPUT TO ANOTHER VARIABLE
originalNumber=$number

# INITIALIZE VARIABLE 
reverse=0

# FUNCTION FOR CHECK PALINDROME
function palindrome()
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

# FUNCTION CALL 
echo result="$( palindrome $number )"

