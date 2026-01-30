#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0]; then

echo "Please run the script with Root User"
exit 1

fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
    echo "$2 ..FAILUR"
    exit 1

    else
    echo "$2 .. SUCCESS"
    fi
}

dnf install nginx -y
VALIDATE $? "Nginx installation"
