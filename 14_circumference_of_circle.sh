#!/bin/bash

# Lesson 14: Circumference of a circle

echo "Enter the radius of the circle:"
read r

circumference=$(echo "scale=2; 2 * 3.14 * $r" | bc)

echo "Circumference of the circle = $circumference"

# ---------------- Output ----------------
# Enter the radius of the circle:
# 7
# Circumference of the circle = 43.96
