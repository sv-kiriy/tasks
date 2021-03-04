#!bin/bash

echo "Enter n: "
read n
sqrt=`echo "scale=0;sqrt($n)" |bc`

if [ $n -lt 2 ]
then
	echo "Not prime"
	exit
fi

for ((i=2;i<=sqrt;i++))
do
x=`expr $n % $i`
if [ $x -eq 0 ]
then
	echo "Not prime"
	exit
fi
done

echo "Prime"
exit
