#!/bin/bash
LOGS_FOLDER="/var/log/shell-practice"
LOGS_FILE="/var/log/shell-practice/$0.log"

R="\e[31m]"
G="\e[32m]"
Y="\e[33m]"
N="\e[0m]"


USERID=$(id -u)

if [ $USERID -ne 0 ]; then

echo -e " $R Please run the script with Root User $N "
exit 1

fi

mkdir -p $LOGS_FOLDER

VALIDATE(){
    if [ $1 -ne 0 ]; then
    echo -e "$2 .. $R FAILURE $N" | tee -a $LOGS_FILE
    exit 1

    else
    echo -e "$2 .. $G SUCCESS $N" |  tee -a $LOGS_FILE
    fi
}

for package in $@
do
dnf list installed $package &>> $LOGS_FILE
if [ $? -ne 0 ];then

echo "$packaage not installed, installing now"
dnf install $package -y &>> $LOGS_FILE
VALIDATE $? "$package installation"
else
echo -e "$package already installed, $Y skipping $N"

fi

done