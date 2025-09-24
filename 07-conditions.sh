#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 100 ]
then
    echo "$NUMBER is greter than 100."
else
    echo "$NUMBER is less than 100."
fi
