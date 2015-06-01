#!/bin/bash
#check wether Directory exsist or not
read -p "Enter Directory Path :" Dir #reads Directory Path
if [ -d "$Dir" ];then #check wether directory is present or not
#if yes	
	echo "Directory exsist "
else
#if no
	echo "Directory Doesnot exsist"
fi
