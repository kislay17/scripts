#!/bin/bash
#Synchronise source to destination folder
read -p "Enter the source folder :" Sfldr #reads source folder destination
if [ -d "$Sfldr" ];then #checks if source folder is present or not
#if yes
	if [ "$(ls -A $Sfldr)" ];then #checks wether directory is empty or not
	#if yes
		read -p "Enter destination folder :" Dfldr #reads Destination folder path
		if [ -d "$Dfldr" ];then #checks if destination folder is present or not
		#if yes 
			rsync -r $Sfldr/ $Dfldr/ #rsync synchronise , r- will allow to sync sub directories 
			echo "Synchronisation done" #prints statement
		else
		#if no
			mkdir $Dfldr #make destination directory
			echo "Destination Directory made"
			rsync -r $Sfldr/ $Dfldr/
			echo "Synchronisation done"
		fi
	else
	#if no
		echo "Source Directory is empty "
	fi
else
#if no
	echo "Source Directory doesnot exsist"
fi
