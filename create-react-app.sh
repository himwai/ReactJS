#!/bin/bash
current_dir=$(dirname "$0")
myApp="client"

# Remove the application directory if it exists
if [ -d "$myApp" ]; then
    rm -rf "$myApp"
fi

# Remove node_modules if it exists
if [ -d "node_modules" ]; then
    rm -rf node_modules
fi

# Remove package-lock.json if it exists
if [ -f "package-lock.json" ]; then
    rm package-lock.json
fi

# Remove package.json if it exists
if [ -f "package.json" ]; then
    rm package.json
fi

# Create a new React app
npx create-react-app "$myApp"

# Change to the new app directory
cd "$myApp"

# Install dependencies from the specified files
xargs npm install --save < ../dependencies.packages
xargs npm install --save-dev < ../dev-dependencies.packages
