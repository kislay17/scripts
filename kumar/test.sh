#!/bin/bash
read -p "Enter number :" Num
a=`wc -l < ki`
if test "$a" -ge "$Num" ;then
	echo "success"
else
	echo "fail"
fi

