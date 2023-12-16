#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]

then
   echo "pls run the script with root access"

fi

yum install postfix -y

if [ $? -ne 0]
then
   echo "Installation of mysql is error"
else
   echo "installation of mysql success"
fi

yum install maven -y

if [ $? -ne 0 ]
then
   echo "installation of maven is error"
else
   echo "installation of maven is success"
fi
