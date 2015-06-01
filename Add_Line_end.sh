#!/bin/bash
#Adds a line at an end
read -p "Enter the directory path :" Dir #reads Directory path
if [ -d "$Dir" ];then #checks if Directory is present or not
#if yes
	read -p "Enter the file name :" Fname #reads the file name
	if test -f $Dir/$Fname;then #checks if file is present or not
	#if yes
		read -p "Enter the Line :" Line #reads the Line 
		sed -i "$"a$Line $Dir/$Fname #insert a line at the end of the file
		echo "Line inserted"
	else
	#if no
		echo "File is not present" #prints statement		
	fi
else
#if no
	echo "Directory is not present"
fi
