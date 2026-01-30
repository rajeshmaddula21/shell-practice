#!/bin/bash

LOGS_FOLDER="/var/log/shell-practice"
LOGS_FILE="/var/log/shell-practice/$0.log"


USERID=$(id -u)

if [ $USERID -ne 0 ]; then

echo "Please run the script with Root User"
exit 1

fi

mkdir -p $LOGS_FOLDER

VALIDATE(){
    if [ $1 -ne 0 ]; then
    echo "$2 ..FAILURE" | tee -a $LOGS_FILE
    exit 1

    else
    echo "$2 .. SUCCESS" |  tee -a $LOGS_FILE
    fi
}

dnf install nginx -y &>> $LOGS_FILE
VALIDATE $? "Nginx installation"

dnf install nodejs -y &>> $LOGS_FILE
VALIDATE $? "nodejs installation"

dnf install mysql -y &>> $LOGS_FILE
VALIDATE $? "mysql installation"