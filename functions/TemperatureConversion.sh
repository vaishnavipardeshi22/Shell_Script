#!/bin/bash -x

# TAKE USER INPUT FOR TEMPERATURE
read -p "Enter the temperature: " temperature

# DISPLAY CHOICES
echo "Enter 1 for Celcius to Fahrenhiet Conversion"
echo "Enter 2 for Fahrenhiet to Celcius Conversion"

# TAKE USER CHOICE
read -p "Enter your Choice: " unit

# INITIALIZING  VARIABLE
IS_DEGREE_CELCIUS=1
IS_DEGREE_FAHRENHIET=2

# FUNCTION FOR CONVERT TEMPERATURE FROM CELCIUS TO FAHRENHIET
function getFahrenhiet()
{
	if [ $temperature -ge 0 -a $temperature -le 100 ]
	then
		degF=$(echo " scale=5; ($temperature * 9 / 5) + 32" | bc )
		echo $degF
	else
		echo "Valid temperature range is 0 deg celcius to 100 deg celcius."
	fi
}

# FUNCTION FOR CONVERT TEMPERATURE FROM  FAHRENHIET TO CELCIUS
function getCelcius()
{
	if [ $temperature -ge 32 -a $temperature -le 212 ]
	then
		degC=$(echo "scale=5; ($temperature - 32) * 5 / 9" | bc )
		echo $degC
	else
		echo "Valid temperature range is 32 deg fahrenhiet to 212 deg fahrenhiet."
	fi
}

case $unit in
	$IS_DEGREE_CELCIUS)
			# FUNCTION CALL FOR CELCIUS TO FAHRENHITE CONVERSION
			result="$( getFahrenhiet )"
			;;
	$IS_DEGREE_FAHRENHIET)
			# FUNCTION CALL FOR FAHRENHITE TO CELCIUS CONVERSION
			result="$( getCelcius )"
			;;
	*)
		echo "Enter Valid Choice."
		;;
esac

# DISPLAY RESULT
echo result=$result
