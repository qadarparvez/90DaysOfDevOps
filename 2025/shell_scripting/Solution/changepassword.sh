#!/bin/bash
#this script is to change the password.

read -p "enter the username: " username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count == 1 ];
then
	read -s -p "enter new password: " password
	echo -e "$username:$password" | sudo chpasswd
	echo "password for $username reset successfully"
else
	echo "$username does not exist"
fi
