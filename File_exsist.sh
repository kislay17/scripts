#!/bin/bash
source /home/vagrant/scripts/Check.sh
#Checks wether file exsist or not
read -p "Enter File path :" Fpth #reads file path 
File_check $Fpth
echo "File exsist"
