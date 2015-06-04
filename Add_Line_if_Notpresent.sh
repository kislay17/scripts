#!/bin/bash
source /home/vagrant/scripts/Check.sh #source command inherits all functions of Check.sh script
#Add a line in a file if not present
read -p "Enter the Directory name :" Dir #raeds the directory name
Dir_check $Dir #calls Dir_check function from Check.sh for Directory exsistence
	read -p "Enter  a file name :" Fname #reads the file name
	File_check $Dir/$Fname #calls File_check function from check.sh for file exsistence
		read -p "Enter the Line :" Line #reads the line to be added
		if grep "$Line" $Dir/$Fname; then #checks if line is present 
		#if yes
			echo "Line already exsist"
		else
		#if no
			echo "$Line" >> $Dir/$Fname #echo append the line in the file by using redirective operator >>
			echo "Line is appended"
		fi


