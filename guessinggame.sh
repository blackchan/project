#!/usr/bin/env bash
# File: guessinggame.sh


function guessinggame {

if [[ $guess =~ [0-9] ]]
then
	if [[ $guess -gt $count ]]
	then
	echo "Too high!"
	elif [[ $guess -lt $count ]]
	then
	echo "Too low!"
	elif [[ $guess -eq $count ]]
	then
	echo "Congratulations! Your guess is right"
	fi
else
echo "Please enter a number"
fi
}

count=$(ls -1 | wc -l)

while [[ $guess -ne $count ]]
do
echo "Guess the number of files in the current directory"
read guess
guessinggame
done
