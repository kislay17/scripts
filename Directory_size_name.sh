#!/bin/bash
#return name and size of directories
read -p "Enter the Directory Path :" Path #reads the Path of Directory
du -h $Path #du command returns the size and name of directories , -h hides all others informations
