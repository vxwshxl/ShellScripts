#!/bin/bash

# Lesson 21: Power of a number without using any predefined function

echo "Enter the base:"
read base

echo "Enter the exponent:"
read exp

result=1

for (( i = 1; i <= exp; i++ ))
do
    result=$((result * base))
done

echo "$base ^ $exp = $result"

# ---------------- Output ----------------
# Enter the base:
# 2
# Enter the exponent:
# 10
# 2 ^ 10 = 1024
