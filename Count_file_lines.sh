#!/bin/bash
#Counts number of lines in a file
read -p "Enter the directory path :" Dir #reads the directory path
if [ -d "$Dir" ];then #if checks if Directory is present or not
#if yes
	read -p "Enter the File name :" Fname #reads file name
	if test -f $Dir/$Fname; then #if checks if file is present or not
	#if yes
		wc -l < $Dir/$Fname #wc commands counts the line number of a file
	else
	#if no
		echo "File doesnot exsist" #echo prints the statement
	fi
else
#if no
	echo "Directory doesnot exsist" #echo prints the statement
fi
