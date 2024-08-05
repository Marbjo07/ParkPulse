@echo off
REM Script Name: init_project.bat

REM Create directories for each repository
mkdir parkpulse-api
mkdir parkpulse-web
mkdir parkpulse-accessmanager

REM Clone the repositories into their respective directories
git clone https://github.com/Marbjo07/ParkPulse-API parkpulse-api
git clone https://github.com/Marbjo07/ParkPulse-website parkpulse-web
git clone https://github.com/Marbjo07/ParkPulse-AccessManager parkpulse-accessmanager

REM Navigate to each directory and perform a git pull
cd parkpulse-api
git pull
cd ..

cd parkpulse-web
git pull
cd ..

cd parkpulse-accessmanager
git pull
cd ..

@echo on
