#!bin/bash

UDERSID=$(id -u)

if [ $USERID -ne 0]; then

echo "Please run the script with the root user"

dnf install nginx -y
echo "Installing Ngix"

fi

