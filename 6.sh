#!bin/bash

sum=0

echo "Number of args: $#"  

for i in $@
	do
	sum=`expr $sum + $i`
done

echo "Sum: $sum"

exit
