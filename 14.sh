#!/bin/bash

echo "Enter year: "

read year

x=`expr $year % 4`
y=`expr $year % 100`
z=`expr $year % 400`

if [ $z -eq 0 ]
then
	echo "YES"
	exit
fi
if [ $y -eq 0 ] 
then
	echo "NO"
	exit
fi
if [ $x -eq 0 ]
then
	echo "YES"
	exit
fi
echo "NO"
exit
