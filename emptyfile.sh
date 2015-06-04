#!/bin/bash
source /home/vagrant/scripts/Check.sh #inherits functions from Check.sh scripts
#Create an empty file
read -p "Enter the Directory path :" Path #reads the path of the file
Dir_check $Path #calls Dir_check Function for Difrectory exsistence
read -p "Enter the file name :" Fname #reads the file name to be created
if test -f $Path/$Fname;then #if check condition ,it gives 1 if file exsist at location and 0 if it doesnot 
	echo "File already exsist" #prints the statement if file exsist
else
	touch $Path/$Fname #create new file at location if doesnot exsist
	echo "File is created at the location" #prints the message after creating file at location
fi
