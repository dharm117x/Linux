#!/bin/bash
read -p "Enter value for x:" x
echo Enter value for y
read y

t=$((x+y))
echo Total $t

if [ $x -gt $y ] ; then
	echo X is greater then Y
elif [ $x -lt $y ] ; then
	echo X is less then y
else
	echo x is equal to y
fi

