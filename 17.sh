#!bin/bash

echo "Enter two numbers: "
read x
read y
echo "Enter operation sign: "
read sign

case $sign in
 '+')
 	echo `expr $x + $y`
	;;
 '-')
 	echo `expr $x - $y`
	;;
 '*')
 	echo `expr $x '*' $y`
	;;
 '/')
 	echo "scale=3;$x / $y" |bc
	;;
 *)
	echo "Invalid input"
	;;
esac
exit
