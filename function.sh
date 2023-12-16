#/bin/bash

USERID=$(id -u)

VALIDATE(){
     if [ $? -ne 0 ]
     then
         echo "Installation... FAILED"
     else
         echo "installation.... SUCCESS"
     fi
}

if [ $USERID -ne 0 ]
then 
    echo "pls run this script with root access"
fi

yum install docker -y

VALIDATE $?

yum install postfix -y

VALIDATE $?