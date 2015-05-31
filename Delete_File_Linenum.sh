#!/bin/bash
#Deletes a line number from a file
read -p "Enter the Dir path :" Dpath #reads the file path
if [ -d "$Dpath" ];then #if checks if directory is present or not
#if yes
	read -p "Enter the file name :" Fname #reads file name
	if test -f $Dpath/$Fname; then #if checks if file is present or not
	#if yes	
		read -p "Enter the line number to be deleted :" Lno #reads the line number to be deleted
		sed -i "$Lno"d $Dpath/$Fname | echo "Line is deleted" #sed commands delete the mentioned file number from file , echo prints the statement
	else
	#if no
		echo "File doesnot exsist" #echo prints statement
	fi
else
#if no
	echo "Directory doesnot exsist" #echo prints statement
fi
