#!bin/bash

USERID=$(id -u)


if [ $USERID -eq 0]; then
echo "Please run the script with Root User"
exit 1

fi

VALIDATE() {
    if [ $1 -ne 0];then
echo "Intalling Nginx ..Failur"
exit 1
else
echo "Installing Nginx ..Success"

fi
}
dnf install mongodb -y
VALIDATE $1 



