#!/bin/bash

# Build script for consulting template
# This script creates a build directory and copies necessary files

echo "Starting build process..."

# Create build directory
mkdir -p build

# Copy index.html to build directory
echo "Copying index.html to build directory..."
cp index.html build/

# Copy any other static assets if they exist
if [ -d "assets" ]; then
    echo "Copying assets directory..."
    cp -r assets build/
fi

if [ -d "css" ]; then
    echo "Copying css directory..."
    cp -r css build/
fi

if [ -d "js" ]; then
    echo "Copying js directory..."
    cp -r js build/
fi

if [ -d "images" ]; then
    echo "Copying images directory..."
    cp -r images build/
fi

echo "Build process completed successfully!"
echo "Files in build directory:"
ls -la build/
