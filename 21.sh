#!bin/bash

echo "Enter n: "
read n
sum=0

for ((i=1;i<=n;i++))
do
sum=`expr $sum + $i`
done

echo "scale=3;$sum / $n" |bc
exit
