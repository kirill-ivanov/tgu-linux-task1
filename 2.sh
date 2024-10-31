#! /bin/bash

echo "Input number: "
read X

if [[ $(($X % 2)) -eq 0 ]]
then
   echo "number is EVEN"
else
   echo "number is ODD"
fi