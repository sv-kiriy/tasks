#!bin/bash

echo "1. Find the number of files and directories in the current location"
echo "2. Print 10 consecutive lines a file"
echo "3. A list of all processes belonging to the current user"
echo "Choose which problem to solve:"
read choice

case $choice in
	1)
		f=0
		d=0
		for file in ./*
		do
			if [ -f $file ]
			then
			f=`expr $f + 1`
			elif [ -d $file ]
			then
			d=`expr $d + 1`
			fi		
		done
		echo "FIles: $f"
		echo "Directories: $d"
		exit
		;;
	2)
		echo "Enter file path:"
		read path
		i=0
		while read LINE
		do
			if (( i == 10))
			then 
			exit
			fi
			echo $LINE
			i=`expr $i + 1`
		done < $path
		exit
		;;
	3)
		ps -U $USER
		exit
		;;
	*)
		echo "Invalid input"
		exit		
		;;
esac
