#!bin/bash

count=0
sum=0

for i in $@
	do
	count=`expr $count + 1`
	sum=`expr $sum + $i`
done

if [ $count -eq 2 ]
	then 
	if [ $1 -gt $2 ]
		then
		echo "Greater number: $1"
	else echo "Greater number: $2"
	fi
	exit
fi

echo "Invalid input"

exit
