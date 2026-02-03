#!bin/bash

LOGS_FOLDER="/var/log/shell-practice"
LOGS_FILE="/var/log/shell-practice/$0.log"

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
dnf install nginx -y &>> $LOGS_FILE
VALIDATE $? "Installing Nginx" 



