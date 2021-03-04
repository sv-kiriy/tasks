#1/bin/bash

echo "Enter 3 numbers:"

read a
read b
read c

if [ $a -lt $b ]
	then
	a=$b
fi

if [ $a -lt $c ]
	then 
	a=$c
fi

echo "The greater number is" $a

exit
