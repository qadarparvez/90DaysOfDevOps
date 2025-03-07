#!/bin/bash
#this script is to create a new account creation


echo "creation of user"

read -p "enter the username:" username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')


if [ $count == 0 ];
then
	sudo useradd -m "$username"
	read -s  -p " enter the password" password
	echo -e "$password\n$password" | sudo passwd "$username"
        echo "creation of user completed"
else
	echo "$username already exists"

fi
