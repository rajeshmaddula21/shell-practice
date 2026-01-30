#!bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then

echo "Please run the script with the root user"
exit 1

fi

dnf install nginx -y
echo "Installing Nginx"

if [ $? -ne 0 ]; then
echo "Nginx installation ..FAILUE"

else
echo "Nginx installation ..SUCCESS"

fi


dnf install mysqll -y

if [ $? -ne 0 ]; then
echo "mysql installation ..FAILUE"

else
echo "mysql installation ..SUCCESS"

fi

dnf install nodejss -y

if [ $? -ne 0 ]; then
echo "nodejs installation ..FAILUE"

else
echo "nodejs installation ..SUCCESS"

fi