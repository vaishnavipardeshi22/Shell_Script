#!/bin/bash -x

# VARIABLE
isFlip=0

# STORE RANDOM VALUE 1 OR 0 FOR COIN FLIP
randomCheck=$(( RANDOM % 2 ))

# CHECK COIN FLIP IS HEADS OR TAILS
if [ $randomCheck -eq $isFlip ]
then
	echo Heads
else
	echo Tails
fi
