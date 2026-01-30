#!/bin/bash

dnf install nginx -y

validate=$(id -u)

if ( validate -ne 0 ) ; then
echo " Please use Sudo access "
exit 1
else
echo "intalling nginx"
fi
