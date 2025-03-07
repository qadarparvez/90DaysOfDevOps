#!/bin/bash
#this script is to create a new account creation


echo "creation of user"

read -p "enter the username:" username
read -p " enter the password" password

sudo useradd -m "$username"
echo -e "$password" | sudo passwd "$username"

echo "creation of user completed"
