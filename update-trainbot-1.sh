#!/bin/bash

# stop all services
pm2 delete all

cd /home/pi/trainbot-1
ls




cd /home/pi/trainbot-1/-proximity-tester
git stash save "temp"
git pull origin
npm install


cd /home/pi/trainbot-1/motor-controller
git stash save "temp"
git pull origin


cd /home/pi/trainbot-1/trainbot-1-commands
git stash save "temp"
git pull origin
git checkout user_c
nano ecosystem.config.js
pm2 start ecosystem.config.js
