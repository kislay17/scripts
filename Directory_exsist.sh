#!/bin/bash
source /home/vagrant/scripts/Check.sh
#check wether Directory exsist or not
read -p "Enter Directory Path :" Dir #reads Directory Path
Dir_check $Dir
echo "Directory exsist"
