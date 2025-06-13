#!/bin/bash
# Demo script for Package Vulnerability Scanner

echo "🚀 Package Vulnerability Scanner Demo"
echo "===================================="

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Error: Python 3 is required but not found"
    exit 1
fi

# Check if pip is installed
if ! command -v pip3 &> /dev/null; then
    echo "❌ Error: pip3 is required but not found"
    exit 1
fi

echo "✅ Found Python and pip"

# Install requirements
echo -e "
📦 Installing requirements..."
pip3 install -r requirements.txt

# Make the scanner executable
chmod +x package_vulnerability_scanner.py

# Run the scanner with a sample file
echo -e "
🔍 Running scanner with sample packages..."
echo "This is a demo output - in real usage you would see actual API results"
echo "===================================================================="

python3 package_vulnerability_scanner.py -f packages.txt
