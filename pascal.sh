#!/bin/zsh

echo "Enter the number of terms:"
read n

echo "Pascal's Triangle with $n terms:"

i=0

while (( i < n ))
do
    # Leading spaces to center the row
    s=0
    while (( s < n - i - 1 ))
    do
        echo -n "  "
        s=$((s + 1))
    done

    # Each value is C(i, j) = C(i, j - 1) * (i - j + 1) / j
    c=1
    j=0
    while (( j <= i ))
    do
        printf "%4d" $c
        c=$((c * (i - j) / (j + 1)))
        j=$((j + 1))
    done

    echo
    i=$((i + 1))
done
