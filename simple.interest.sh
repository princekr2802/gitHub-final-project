#!/bin/bash
# Simple Interest Calculator
# Formula: SI = (P × R × T) / 100

echo "=== Simple Interest Calculator ==="

# Take inputs
read -p "Enter Principal amount: " principal
read -p "Enter Rate of Interest (%): " rate
read -p "Enter Time (in years): " time

# Calculate simple interest
si=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Show result
echo "Simple Interest = $si"
