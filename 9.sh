#!bin/bash

echo "If you see zero, then there are no errors."
echo "Status: $?"

echo "Now I'll execute the wrong command."
error_command
echo "Status: $?"

exit
