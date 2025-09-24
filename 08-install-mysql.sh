#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then  
    echo "ERROR :: Please access with root user."
    exit 1
else
    echo "You are a root user."
fi
dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "ERROR :: Installing mysql is failed."
    exit 1
else
    echo "Installing mysql is success."
fi

dnf install git -y

if [ $? -ne 0 ]
then
    echo "ERROR :: Installing git is failed."
else
    echo "Installing git is success."
fi