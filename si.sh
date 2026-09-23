#!/bin/zsh

echo "Enter Principal Amount:"
read principal

echo "Enter Rate of Interest:"
read rate

echo "Enter Time (in years):"
read time

si=$((principal * rate * time / 100))

total=$((principal + si))

echo "Simple Interest = $si"
echo "Total Amount = $total"
