#!/bin/bash

USERID=$(id -u)


if [ $USERID -ne 0 ]; then
echo "Please run the script with the root access"
exit 1

fi

VALIDATE(){
  if [ $1 -ne 0 ];then
echo "$2 .. Failure" 
exit 1
else
echo "$1 .. Success" 
fi  
}

echo "installing nginx"

dnf install nginx -y 

VALIDATE $? "Installing nginx"

