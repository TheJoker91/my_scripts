#!/bin/bash

# Description: Script to check ages
# Author: Idriss B
# Date: 7/1/2024

echo "Enter your age:"
read A

if [ -z $A ] || ! [ $A -eq $A ] 2>/dev/null
then
echo "Please enter a valid integer, representing your age"
exit 1
fi

if [ $A -ge 21 ] && [ $A -lt 90 ]
then
echo "Welcome to the store. Please visit aisle 13 for our special."

elif [ $A -ge 90 ]
then
echo " Welcome to the store. Drink at your own risk"

elif [ $A -lt 10 ]
then
echo "Who sent you here? Go home and drink some milk"

else
echo "Go home and drink some juice."
fi
