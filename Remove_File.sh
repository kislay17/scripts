#!/bin/bash
#Remove a file
read -p "Enter file path  to be deleted:" Fpth #reads file path
if test -f $Fpth;then #checks wether file is present or not
#if yes
	read -p "Are u sure wanna to Delete "$Fpth" [y/n] :" rd #reads the input as y or n
	if [ "$rd" == "y" ];then #checks y or not
	#if yes
		rm $Fpth #removes file 
		echo "File Deleted"
	else
	#if no
		echo "Process Terminated"
	fi
else
#if no
	echo "No File Found"
fi
