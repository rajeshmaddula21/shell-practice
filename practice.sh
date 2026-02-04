#!/bin/bash

USERID=$(id -u)


if [ $USERID -ne 0 ]; then
echo "Please run the script with the root access"
exit 1

fi
echo "installing nginx"
dnf install nginxxx -y
if [ $? -ne 0 ];then
echo "niginx installation .. Failure"
else
echo "nginx installation .. Success"

fi