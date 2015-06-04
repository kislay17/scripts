#!/bin/bash
source /home/vagrant/scripts/Check.sh #inherits function from Check.sh function
#Find out all file list correspond to a particular pattern
read -p "Enter Directory Path :" Path #reads the path of the Directory
Dir_check $Path #calls Dir_check function for Directory exsistence
read -p "Enter a file name pattern :" Patrn #reads the file name pattern
if find $Path -name "$Patrn"; then #if checks condition , it gives 1 if condition satisfies and 0 if not
	ls $Path/$Patrn* #list all files following same pattern at desired path
else
	echo "file not found" #prints written statement
fi


