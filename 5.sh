#!bin/bash

echo "Enter n: "

read n

echo "From system: "

read syst1

echo "To system: "

read syst2

echo "obase=$syst2;ibase=$syst1; $n" | bc

exit
