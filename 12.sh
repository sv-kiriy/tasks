#1/bin/bash

echo "Enter number:"

read a
x=`expr $a % 2`
if [ $x -lt 1 ]
	then
	echo "Number is even"
	else echo "Number is odd"
fi

exit
