#!/bin/bash
#Removes a Directory
read -p "Enter the Directory name :" Dir #reads Directory path
if [ -d "$Dir" ];then #checks wether Directory is available or not
#if yes
	read -p "Are u surely wanna Delete $Dir [y/n] :" rd #reads y or n
	if [ "$rd" == "y" ];then #checks if rd= y or not
	#if yes
		rm -rf $Dir/ #removes directory as well as all its sub directories and files
		echo "Directory Removed" #prints statement
	else
	#if no
		echo "Process terminated" #prints statement
	fi
else
#if no
	echo "Directory doesnot exsist"
fi
