#!/bin/bash
# Simple Interest Calculator
# Formula: SI = (P × R × T) / 100

echo "=== Simple Interest Calculator ==="

# Take inputs from user
read -p "Enter Principal amount: " principal
read -p "Enter Rate of Interest (%): " rate
read -p "Enter Time (in years): " time

# Check if bc is installed
if ! command -v bc &> /dev/null; then
    echo "Error: 'bc' is not installed. Please run:"
    echo "sudo apt update && sudo apt install -y bc"
    exit 1
fi

# Calculate Simple Interest with 2 decimal places
si=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Show result
echo "Simple Interest = $si"
