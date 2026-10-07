#!/bin/bash

# Lesson 2: Simple interest and total amount

echo "Enter the principal amount:"
read p

echo "Enter the rate of interest (% per year):"
read r

echo "Enter the time (in years):"
read t

si=$(echo "scale=2; $p * $r * $t / 100" | bc)
total=$(echo "scale=2; $p + $si" | bc)

echo "Simple Interest = $si"
echo "Total Amount    = $total"

# ---------------- Output ----------------
# Enter the principal amount:
# 5000
# Enter the rate of interest (% per year):
# 8
# Enter the time (in years):
# 3
# Simple Interest = 1200.00
# Total Amount    = 6200.00
