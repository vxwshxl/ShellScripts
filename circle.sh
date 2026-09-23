#!/bin/bash

echo "Enter the radius of the circle:"
read r

# Calculate area (π ≈ 3.14159)
area=$(echo "3.14159 * $r * $r" | bc -l)

echo "Area of the circle = $area"
