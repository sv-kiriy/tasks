#!bin/bash

echo "Enter n: "
read n
s=0

if [ $n -lt 0 ]
then
n=`expr $n '*' -1`
fi

while [ $n -gt 0 ]
do
	s=`expr $n % 10 + $s`
	n=`expr $n / 10`	
done

echo $s
exit
