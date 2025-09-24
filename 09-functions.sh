#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "Please run the script as root access."
    exit 1
else
    echo "You are root user."
fi
dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "Installing failed."
    exit 1
else
    echo "Installing success."