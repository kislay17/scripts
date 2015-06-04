#!/bin/bash
source /home/vagrant/scripts/Check.sh #source command inherit all functions from Check.sh script
#Counts number of lines in a file
read -p "Enter the directory path :" Dir #reads the directory path
Dir_check $Dir #calls Dir_check function for directory exsistence
	read -p "Enter the File name :" Fname #reads file name
	File_check $Dir/$Path #calls File_check function for file exsistence
		wc -l < $Dir/$Fname #wc commands counts the line number of a file
