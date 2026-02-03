#!bin/bash

USERID=$(id -u)


if [ $USERID -ne 0 ]; then
echo "Please run the script with Root User"
exit 1

fi

VALIDATE() {
    if [ $1 -ne 0 ];then
echo "$2 ..Failur"
exit 1
else
echo "$2 ..Success"

fi
}
dnf install nginx -y
VALIDATE $? "Installing Nginx" 



