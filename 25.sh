#!bin/bash

echo "Enter n: "
read n

n1=1
n2=0
_n=0

while [ $n2 -le $n ]
do
_n=$n2
n2=`expr $n1 + $n2`
n1=$_n
	echo -n "$n1 " 
done
echo
exit
