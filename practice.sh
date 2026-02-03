#!bin/bash

USERID=$(id -u)

if [ $USERID -eq 0]; then
echo "Please run the script with Root User"
exit 1

fi

echo "Installing Nginx"
dnf install mongodb -y

if [ $? -ne 0];then
echo "Intalling Nginx ..Failur"
exit 1
else
echo "Installing Nginx ..Successghhh"

fi
