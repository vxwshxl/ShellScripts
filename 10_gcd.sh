#!/bin/bash

# Lesson 10: GCD of two numbers (Euclid's method)

echo "Enter the first number:"
read a

echo "Enter the second number:"
read b

x=$a
y=$b

while (( y != 0 ))
do
    r=$((x % y))
    x=$y
    y=$r
done

echo "GCD of $a and $b = $x"

# ---------------- Output ----------------
# Enter the first number:
# 48
# Enter the second number:
# 18
# GCD of 48 and 18 = 6
