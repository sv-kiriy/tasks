#!/bin/bash

echo "Enter coordinates: "

read x
read y

if [ $x -ge 0 ] && [ $y -ge 0 ]
	then
		echo "First ($x,$y)"
		exit
fi

if [ $x -le 0 ] && [ $y -ge 0 ]
	then
		echo "Second ($x,$y)"
		exit
fi

if [ $x -le 0 ] && [ $y -le 0 ]
	then
		echo "Third ($x,$y)"
		exit
fi

if [ $x -ge 0 ] && [ $y -le 0 ]
	then
		echo "Fourth ($x,$y)"
		exit
fi
exit
