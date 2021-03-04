#!bin/bash

echo -n "Enter a number:"

read x

if [ $x -lt 0 ]
	then
		x=`expr -1 "*" $x`
fi

sum=0

while [ $x -gt 0 ]
	do
		sum=`expr $sum + $x % 10`
		_x=`expr $x % 10`
		__x=`expr $x - $_x`
		x=`expr $__x / 10`
	done

echo $sum

exit
