#!/bin/bash

# stop all services
pm2 delete all

cd /home/pi/trainbot-2
ls

cd /home/pi/trainbot-2/openCV-server
# y
# pip3 install requirements.txt
git stash save "temp"
git pull origin

cd /home/pi/trainbot-2/main-server
git stash save "temp"
git pull origin
npm install

cd /home/pi/trainbot-2/barcode-server
# pip3 install requirements.txt
git stash save "temp"
git pull origin

cd /home/pi/trainbot-2/trainbot-2-commands
git stash save "temp"
git pull origin
git checkout master
pm2 start ecosystem.config.js