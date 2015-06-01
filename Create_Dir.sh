#!/bin/bash
#creates a directory
read -p "Enter the directory path :" Dir #reads Directory path
if [ -d "$Dir" ];then #checks if directory is present or not
#if yes 
	echo "Directory already exsist" #prints statement
else
#if no
	mkdir $Dir
	echo "Directory created"
fi
