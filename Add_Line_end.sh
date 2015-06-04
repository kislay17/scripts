#!/bin/bash
source /home/vagrant/scripts/Check.sh #source command inherit functions of Check.sh script
#Adds a line at an end
read -p "Enter the directory path :" Dir #reads Directory path
Dir_check $Dir #calls Dir_check function from check.sh for directory exsistence
	read -p "Enter the file name :" Fname #reads the file name
	File_check $Dir/$Fname#calls File_check function for file exsistence
		read -p "Enter the Line :" Line #reads the Line 
		sed -i "$"a$Line $Dir/$Fname #insert a line at the end of the file

