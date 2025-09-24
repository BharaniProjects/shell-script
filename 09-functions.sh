#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "ERROR :: $2... failed."
        exit 1
    else
        echo "$2... success."
    fi
}
if [ $ID -ne 0 ]
then
    echo "Please run the script as root access."
    exit 1
else
    echo "You are root user."
fi

dnf install mysql -y

VALIDATE $? "Installing mysql"

dnf install git -y

VALIDATE $? "Installing git"