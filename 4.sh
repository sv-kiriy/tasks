#!bin/bash

x=10.25
y=3.333

echo "Let x = 10.25, y = 3.333"
echo "Addition: "
echo "scale=3; $x + $y" | bc
echo "Subtraction: "
echo "scale=3; $x - $y" | bc
echo "Multiplication: "
echo "scale=3; $x * $y" | bc
echo "Division: "
echo "scale=3; $x / $y" | bc

exit
