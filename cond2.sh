#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]

then
   echo "pls run the script with root access"

fi

yum install mysql -y
