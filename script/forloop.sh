#!/bin/bash

for i in {1..3}
do
	echo $i
done

for x in test1 test2 test3
do 
	echo $x
done

for y in $@
do 
	echo "Enter arg is $y"
done

for i in `find -type f`
do
	echo $i
done

