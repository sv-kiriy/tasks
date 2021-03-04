#!bin/bash

echo "Enter two numbers: "
read x
read y

while [ $x -ne $y ]
do
if [ $x -gt $y ]
then
	x=`expr $x - $y`
else 
	y=`expr $y - $x`
fi
done
echo $x
exit
