#!/bin/bash
#this script is to del user

read -p "enter the username:" username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count == 1 ];
then
	sudo userdel -r $username
        echo "username deleted"
else

echo "usename does not exist"

fi
