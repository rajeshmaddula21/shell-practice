#!/bin/bash

USERID=$(id -u)


if [ $USERID -ne 0 ]; then
echo "Please run the script with the root access"
exit 1

fi
echo "installing nginx"
dnf install nginxxx -y &>> output.log
if [ $? -ne 0 ];then
echo "niginx installation .. Failure" tee | -a output.log
else
echo "nginx installation .. Success"
fi