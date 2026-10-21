#!/bin/bash

# Lesson 9: Area of a circle

echo "Enter the radius of the circle:"
read r

area=$(echo "scale=2; 3.14 * $r * $r" | bc)

echo "Area of the circle = $area"

# ---------------- Output ----------------
# Enter the radius of the circle:
# 7
# Area of the circle = 153.86
