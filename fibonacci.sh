#!/bin/zsh

a=0
b=1

echo "Fibonacci Series up to 500:"

while (( a <= 500 ))
do
    echo -n "$a "

    next=$((a + b))
    a=$b
    b=$next
done

echo
