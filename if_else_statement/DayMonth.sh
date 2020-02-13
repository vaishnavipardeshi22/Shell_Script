#!/bin/bash -x

# TAKING USER INPUT
read -p "Enter Day: " day
read -p "Enter Month: " month

# TO CHECK FOR DAY OF MONTH IS BETWEEN MARCH 20 AND JUNE 20
if [[( $day -ge 20 ) && ( $day -le 31 ) && ( $month -eq 3 )]] ||
	[[( $day -ge 1 ) && ( $day -le 30 ) && ( $month -eq 4 )]] ||
	[[( $day -ge 1 ) && ( $day -le 31 ) && ( $month -eq 5 )]] ||
	[[( $day -ge 1 ) && ( $day -le 20 ) && ( $month -eq 6 )]]
then
	echo True
else
	echo False
fi
