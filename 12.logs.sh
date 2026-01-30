#!bin/bash

LOGS_FOLDER="var/log/shell-practice"
LOGs_FILE="/var/log/shell-practice/$0.log"


USERID=$(id -u)

if [ $USERID -ne 0 ]; then

echo "Please run the script with Root User"
exit 1

fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
    echo "$2 ..FAILUR"
    exit 1

    else
    echo "$2 .. SUCCESS"
    fi
}

dnf install nginx -y &>> $LOGs_FILE
VALIDATE $? "Nginx installation"

dnf install nodejs -y &>> $LOGs_FILE
VALIDATE $? "nodejs installation"

dnf install mysql -y &>> $LOGs_FILE
VALIDATE $? "mysql installation"