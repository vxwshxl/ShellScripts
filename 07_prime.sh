#!/bin/bash

# Lesson 7: Check whether a number is prime or not

echo "Enter a number:"
read n

if (( n < 2 ))
then
    echo "$n is not a Prime number"
    exit 0
fi

i=2
prime=1

while (( i * i <= n ))
do
    if (( n % i == 0 ))
    then
        prime=0
        break
    fi
    i=$((i + 1))
done

if (( prime == 1 ))
then
    echo "$n is a Prime number"
else
    echo "$n is not a Prime number"
fi

# ---------------- Output ----------------
# Enter a number:
# 29
# 29 is a Prime number
