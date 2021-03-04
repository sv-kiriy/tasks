#1/bin/bash

echo "Enter 2 numbers:"

read a
read b

if [ $a -lt $b ]
	then
	a=$b
fi

echo "The greater number is $a"

exit
