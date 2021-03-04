#!bin/bash

function power() {
if (( $2 == 0 ))
then
x=1
fi
if (( $2 > 0 ))
then
_x=$1
for (( i=1; i < $2; i++))
do
	x=`expr $x '*' $_x`
done
fi
}

function factorial() {
if (( $1 == 0 || $1 == 1 ))
then
fact=1
fi
if (( $1 > 1 ))
then
fact=1
for (( i=2; i <= $1; i++ ))
do
	fact=`expr $fact '*' $i`
done 
fi
}


echo "Enter n:"
read n
echo "Enter x:"
read x

X=$x
N=$n

result=1
if (( n == 0 ))
then
echo "Result:"
echo 1
fi
if (( n >= 1 ))
then
result=`expr $result + $X`
for (( j=2; j <= N; j++ ))
do
	n=$j
	x=$X
	power $x $n
	var_1=$x
	
	factorial $n
	var_2=$fact
	
	_result=`echo "scale=10; $var_1 / $var_2" | bc`
	result=`echo "scale=10; $result + $_result" | bc`
done
echo "Result: "
echo "scale=10; $result" | bc
fi
exit


