#!/bin/bash

state=""
while [ "$state" != "exit" ]
do
choice=""
echo "========== Linux System Manager =========="
echo "1. Show System Information"
echo "2. Check File Permissions"
echo "3. Change File Permissions"
echo "4. Compress a File/Directory"
echo "5. Decompress a File"
echo "6. Exit"
echo "=========================================="
read -p "Enter your choice: $choice" choice
echo  ""

file=""

case $choice in
1)
	user=$(whoami)
	echo "Current User: $user";;
2)
	read -p "Enter the filename: $file" file
	permissions=$(ls -l | grep "$file" | cut -d ' ' -f 1)
	echo "Permissions for $file: $permissions";;
3)
	read -p "Enter the filename: $file" file
	read -p "Enter new permission : $new_perm" new_perm
	chmod $new_perm $file
	echo "Permissions changed successfully.";;
4)
	read -p "Enter the file/directory name: $file" file
	echo "Choose compression type:"
	echo "1. tar.gz"
	echo "2. zip"
	read -p "Enter choice: $option" option
	case $option in
		1)
			tar -czf $file.tar.gz $file
			zipped=$file.tar.gz;;
		2)
			zip $file
			zipped=$file.zip;;
		*)
			;;
	esac
	echo "Compression successful: $zipped created.";;
5)
	read -p "Enter the compressed file name: $comp_file" comp_file
	echo "Extracting..."
	extension=$(echo $comp_file | grep -o "\..\+")
	if [[ $extension == "\.gz" ]]
		then
			gunzip $comp_file
	elif [[ $extension == "\.bz" ]]
		then
			bunzip2 $comp_file
	elif [[ $extension == "\.zip" ]]
		then
			unzip $comp_file
	fi
	echo "Decompression successful.";;
6)
	echo "Exiting the system manager. Goodbye!"
	state="exit";;
*)
	;;
esac
echo ""
done
