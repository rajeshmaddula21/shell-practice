#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ] ; then
    echo "Please run this script with root access"
    exit 1
fi

echo "Installing Nginx"
dnf install nginxx -y

if [ $? -ne 0 ]; then
    echo "Installing Nginx ...Failur"
    exit 1
else 
    echo "Installing  Nginx ...Success"
fi
