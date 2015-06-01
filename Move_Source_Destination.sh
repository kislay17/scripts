#!/bin/bash
#Move File from Source to Destination
read -p "Enter the source Directory path :" Sdir #reads source directory path
if [ -d "$Sdir" ];then #checks if source directory is present or not
#if yes
	if [ "$(ls -A $Sdir)" ];then #check wether Source Directory is empty or not
	
		read -p "Enter the Destination Directory :" Ddir #reads Destination Directory path
		if [ -d "$Ddir" ];then #checks if destination Directory is present or not
		#if yes
			mv $Sdir/* $Ddir | echo "Moved succesfully" #mv moves file from source to destination folder, echo prints statement
		else
		#if no
			echo "Destination Directory Doesnot exsist"
			read -p "Do you want to create Destination folder [y/n] :" rd #reads yes/no from user
			if [ "$rd" == "y" ];then #checks if yes or no
			#if yes
				mkdir $Ddir #makes destination directory	
				mv $Sdir/* $Ddir
				echo "Moved Sucessfully"
			else
			#if no
				echo "Process Finished"
			fi
		fi
	else
	#if no
		echo "Source Directory is empty"
	fi
else
#if no
	echo "Source folder doesnot exsist"
fi
