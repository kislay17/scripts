#!/bin/bash
#Find out all file list correspond to a particular pattern
read -p "Enter file Path :" Path #reads the path of the file
read -p "Enter a file name pattern :" Patrn #reads the file name pattern
if find $Path -name "$Patrn"; then #if checks condition , it gives 1 if condition satisfies and 0 if not
	ls $Path/$Patrn* #list all files following same pattern at desired path
else
	echo "file not found" #prints written statement
fi


