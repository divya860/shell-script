#/bin/bash

USERID=$(id -u)

VALIDATE(){
     if [ $? -ne 0 ]
     then
         echo "Installation... FAILED(not removed)"
     else
         echo "installation.... SUCCESS(removed)"
     fi
}

if [USERID -ne 0 ]
then 
    echo "pls run this script with root access"
fi

yum remove mysql -y

VALIDATE $?

yum remove postfix -y

VALIDATE $?