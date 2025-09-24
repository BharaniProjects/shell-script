#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "ERROR :: $2... $R Failed.$N"
        exit 1
    else
        echo -e "$G $2... $G success.$N"
    fi
}
if [ $ID -ne 0 ]
then
    echo "Please run the script as root access."
    exit 1
else
    echo "You are root user."
fi

dnf install mysql -y &>> $LOGFILE

VALIDATE $? "Installing mysql"

dnf install git -y &>> $LOGFILE

VALIDATE $? "Installing git"