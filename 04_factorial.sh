#!/bin/bash

# Lesson 4: Factorial of a number

echo "Enter a number:"
read n

fact=1
i=1

while (( i <= n ))
do
    fact=$((fact * i))
    i=$((i + 1))
done

echo "Factorial of $n = $fact"

# ---------------- Output ----------------
# Enter a number:
# 5
# Factorial of 5 = 120
