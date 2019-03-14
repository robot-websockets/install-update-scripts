#!/bin/bash

pm2 delete all
cd /home/pi/trainbot-all


cd /home/pi/trainbot-all/motor-controller
git stash save "temp"
git pull origin

cd /home/pi/trainbot-all/proximity-sensor
git stash save "temp"
git pull origin


cd /home/pi/trainbot-all/main-server
git stash save "temp"
git pull origin
git checkout single_pi

cd /home/pi/trainbot-all/barcode-server
git stash save "temp"
git pull origin
npm install

cd /home/pi/trainbot-all/openCV-server
git stash save "temp"
git pull origin
npm install

cd /home/pi/trainbot-all/trainbot-all
git pull origin
git stash save "temp"

pm2 start ecosystem.config.js
pm2 save
# pm2 startup