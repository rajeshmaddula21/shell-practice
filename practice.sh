#!bin/bash

USERID=$(id -u)


if [ $USERID -eq 0]; then
echo "Please run the script with Root User"
exit 1

fi

VALIDATE() {
    if [ $1 -ne 0];then
echo "$2 ..Failur"
exit 1
else
echo "$2 ..Success"

fi
}
dnf install Nginx -y
VALIDATE $? "Installing Nginx" 



