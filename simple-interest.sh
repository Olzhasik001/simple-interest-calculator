#!/bin/bash

# Simple Interest Calculator
# Formula: SI = (P * R * T) / 100

echo "=== Simple Interest Calculator ==="

read -p "Enter the principal amount: " principal
read -p "Enter the annual rate of interest (%): " rate
read -p "Enter the time period (in years): " time

# Calculate simple interest using bc for decimal support
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
total=$(echo "scale=2; $principal + $interest" | bc)

echo "-----------------------------------"
echo "Principal:       $principal"
echo "Rate of interest: $rate%"
echo "Time period:     $time years"
echo "Simple Interest: $interest"
echo "Total amount:    $total"
