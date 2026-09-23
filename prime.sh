#!/bin/zsh

echo "Enter a number:"
read number

if (( number <= 1 ))
then
    echo "$number is NOT a Prime Number."
    exit
fi

flag=0
i=2

while (( i <= number / 2 ))
do
    if (( number % i == 0 ))
    then
        flag=1
        break
    fi
    i=$((i + 1))
done

if (( flag == 0 ))
then
    echo "$number is a Prime Number."
else
    echo "$number is NOT a Prime Number."
fi
