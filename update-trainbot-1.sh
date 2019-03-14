#!/bin/bash

# stop all services
pm2 delete all

cd /home/pi/trainbot-1
ls




cd /home/pi/trainbot-1/-proximity-sensor
git stash save "temp"
git pull origin


cd /home/pi/trainbot-1/motor-controller
git stash save "temp"
git pull origin


cd /home/pi/trainbot-1/trainbot-1-commands
git stash save "temp"
git pull origin
git checkout master
# check ip adresses are correct.
printf "\n\nCheck your ip address is correct.\n\n"
nano ecosystem.config.js
pm2 start ecosystem.config.js
