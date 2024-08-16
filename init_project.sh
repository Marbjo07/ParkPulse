#!/bin/bash
# Script Name: init_project.sh

# Enable error handling and echo commands
set -e
set -x

# Create directories for each repository if they don't exist
mkdir -p parkpulse-api
mkdir -p parkpulse-web
mkdir -p parkpulse-accessmanager

# Configure SSH for Git
mkdir -p ~/.ssh
echo "$SSH_PRIVATE_KEY" > ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa

# Clone the repositories using SSH
if [ ! -d "parkpulse-api/.git" ]; then
    git clone git@github.com:Marbjo07/ParkPulse-API.git parkpulse-api
fi

if [ ! -d "parkpulse-web/.git" ]; then
    git clone git@github.com:Marbjo07/ParkPulse-website.git parkpulse-web
fi

if [ ! -d "parkpulse-accessmanager/.git" ]; then
    git clone git@github.com:Marbjo07/ParkPulse-AccessManager.git parkpulse-accessmanager
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
