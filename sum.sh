#!/bin/zsh

echo "Enter the value of n: "
read n

sum=0
i=1

while (( i <= n ))
do
	sum=$((sum + i))
	i=$((i + 1))
done

echo "Sum = $sum"
