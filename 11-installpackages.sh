#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "ERROR :: $2...$R FAILED $N"
        exit 1
    else
        echo -e "Installing $2...$G success$N"
    fi
}

if [ $ID -ne 0 ]
then
    echo -e "$R Please run this script as root access.$N"
    exit 1
else
    echo -e "$G You are root user.$N"
fi

for package in $@
do
    dnf list installed $package &>> $LOGFILE
    if [ $? -ne 0 ]
    then
        dnf install $package -y &>> $LOGFILE
        VALIDATE $? "Installing $package"
    else
        echo -e "$package is already Installed.. $Y Skipping..$N"
    fi
done