#!bin/bash

count=0
sum=0

for i in $@
	do
	count=`expr $count + 1`
	sum=`expr $sum + $i`
done

if [ $count -eq 3 ]
	then 
	echo "scale=3;$sum/3" | bc
	exit
fi

echo "Invalid input"

exit
