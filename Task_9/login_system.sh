#!/bin/bash

x="invalid"
while [ "$x" != "valid" ]
do
x="valid"
role=""
read -p "Enter your role: $role" role
case $role in
"Admin")
	echo "Welcome, Admin! You have full access."
	;;
"Editor")
	echo "Welcome, Editor! You can edit content."
	;;
"Viewer")
	echo "Welcome, Viewer! You can only view content."
	;;
*)
	x="invalid"
	echo "Invalid role. Please enter Admin, Editor, or Viewer."
	;;
esac
done
