#!/bin/bash
# Script Name: init_project.sh

# Enable error handling and echo commands
set -e
set -x

# Create directories for each repository if they don't exist
mkdir -p parkpulse-api
mkdir -p parkpulse-web
mkdir -p parkpulse-accessmanager

# Clone the repositories into their respective directories if they haven't been cloned already
if [ ! -d "parkpulse-api/.git" ]; then
    git clone https://github.com/Marbjo07/ParkPulse-API parkpulse-api
fi

if [ ! -d "parkpulse-web/.git" ]; then
    git clone https://github.com/Marbjo07/ParkPulse-website parkpulse-web
fi

if [ ! -d "parkpulse-accessmanager/.git" ]; then
    git clone https://github.com/Marbjo07/ParkPulse-AccessManager parkpulse-accessmanager
fi

# Navigate to each directory and perform a git pull
cd parkpulse-api
git pull
cd ..

cd parkpulse-web
git pull
cd ..

cd parkpulse-accessmanager
git pull
cd ..

# Disable command echoing
set +x
