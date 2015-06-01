#!/bin/bash
#Checks wether file exsist or not
read -p "Enter File path :" Fpth #reads file path
if test -f $Fpth;then #check wether file exsist or not
#if yes
	echo "File exsist"
else
#if no
	echo "File doesnot exsist"
fi
