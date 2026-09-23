#!/bin/zsh

echo "Enter the radius of the circle:"
read radius

pi=3.14159

circumference=$(echo "2 * $pi * $radius" | bc -l)
area=$(echo "$pi * $radius * $radius" | bc -l)

echo "Circumference = $circumference"
echo "Area = $area"
