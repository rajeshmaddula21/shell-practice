#!/bin/bash

set -e # ERR

trap 'echo "There an erro in $LINENO, Command: $BASH_COMMAND"' ERR

LOGS_FOLDER="/var/log/shell-practice"
LOGS_FILE="/var/log/shell-practice/$0.log"

R="\e[31m]"
G="\e[32m]"
Y="\e[33m]"
N="\e[0m]"


USERID=$(id -u)

if [ $USERID -ne 0 ]; then

echo -e "$R Please run the script with Root User $N "
exit 1

fi

mkdir -p $LOGS_FOLDER



for package in $@
do
dnf list installed $package &>> $LOGS_FILE
if [ $? -ne 0 ];then

echo "$packaage not installed, installing now"
dnf install $package -y &>> $LOGS_FILE

else
echo -e "$package already installed, $Y skipping $N"

fi

done