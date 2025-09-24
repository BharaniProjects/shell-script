#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then  
    echo "ERROR :: Please access with root user."
else
    echo "You are a root user."
fi
dnf install mysql -y
