#!/bin/bash
cd /home/container

# Output Current Node Version
node -v
npm -v
yarn -v

# Strict Startup Script
eval $STARTUP
