#!/bin/bash

# Lesson 23: Print full name after reading the title and name separately

echo "Enter the title (Mr/Ms/Dr):"
read title

echo "Enter the name:"
read name

full_name="$title. $name"

echo "Full Name: $full_name"

# ---------------- Output ----------------
# Enter the title (Mr/Ms/Dr):
# Mr
# Enter the name:
# John Smith
# Full Name: Mr. John Smith
