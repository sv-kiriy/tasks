#!/bin/bash

echo "Enter 3 sides of triangle:"

read min
read mid
read max

if [ $min -gt $mid ]
	then
	x=$min
	min=$mid
	mid=$x
fi

if [ $mid -gt $max ]
	then
	x=$mid
	mid=$max
	max=$x
fi

if [ $min -gt $mid ]
	then
	x=$min
	min=$mid
	mid=$x
fi

if [ `expr  $min + $mid` -le $max ]
	then 
	echo "Invalid sides"
	exit
fi

if [ $min -eq $max ]
	then 
	echo "Equilateral"
	exit
fi

right=`echo "$mid"*"$mid+$min"*"$min-$max"*"$max" | bc`

if [ $right -eq  0 ]
	then
	echo "Right"
	exit
fi

if  [ $min -eq $mid ] && [ $min -ne $max ]
	then 
	echo "Isosceles"
	exit
fi

if  [ $mid -eq $max ]  && [ $min -ne $mid ]
	then
	echo "Isosceles"
	exit
fi

echo "Invalid sides"

exit
