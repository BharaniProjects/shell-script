#!/bin/bash

FRUITS=("Apple","Mango","Banana")

echo "The first value : ${$FRUITS[0]}"
echo "The second value : ${$FRUITS[1]}"
echo "The Third value  : ${$FRUITS[2]}"

echo "All fruits : ${$FRUITS[@]}"