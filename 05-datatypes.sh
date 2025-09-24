#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))
echo "Total sum :: $SUM"

echo "How many arguments passed. $#"
echo "All org passed. $@"
echo "script name $0"