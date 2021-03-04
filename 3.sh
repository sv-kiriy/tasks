#!bin/bash

x=10
y=3

echo "Let x = 10, y = 3"
echo "Addition: "
echo `expr $x + $y`
echo "Subtraction: "
echo `expr $x - $y`
echo "Multiplication: "
echo `expr $x '*' $y`
echo "Division: "
echo `expr $x / $y`
echo "Division with remainder: "
echo `expr $x % $y`

exit
