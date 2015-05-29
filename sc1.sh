#!/bin/bash
#Create an empty file
read -p "Enter the file path :" Path #reads the path of the file
read -p "Enter the file name :" Fname #reads the file name to be created
if test "$Fname" = "$path"/*; then #if check condition ,it gives 1 if file exsist at location and 0 if it doesnot 
	echo "File already exsist" #prints the statement if file exsist
else
	touch $Path/$Fname #create new file at location if doesnot exsist
	echo "File is created at the location" #prints the message after creating file at location
fi
