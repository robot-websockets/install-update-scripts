#!/bin/bash

# stop all services
pm2 delete all

cd /home/pi/trainbot-1
ls

cd /home/pi/trainbot-1/-proximity-tester
npm install
git stash "temp"
git pull origin


cd /home/pi/trainbot-1/motor-controller
git stash"temp"
git pull origin


cd /home/pi/trainbot-1/trainbot-1-commands
git stash "temp"
git pull origin
git checkout user_c
pm2 start ecosystem.config.js
