#!bin/bash

function pascal() {
x=1
n=$1
for (( i=1; i <= n; i++ ))
do
x=`expr $x '*' $i`
done
}

echo "Enter the number of lines you need:"
read k
echo 1
for (( j=1; j <= k; j++ ))
do
	for (( c=0; c <= j; c++ ))
	do

	x=$j
	pascal $x
	_x=$x
	
	x=$c
	pascal $x
	_y=$x
 
	z=`expr $j - $c`
	x=$z
	pascal $x
	_z=$x

	_y=`expr $_y '*' $_z`
	_x=`expr $_x / $_y`
	echo -n "$_x "
	done 
echo
done
exit
