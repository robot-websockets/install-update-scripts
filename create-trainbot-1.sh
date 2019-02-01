#!/bin/bash
# do this first outside of file this is the only sudo command.
# sudo rm -r /home/pi/trainbot-1

# stop all services
# pm2 delete all
npm install pm2 -g
pm2 completion install

mkdir /home/pi/trainbot-1
cd /home/pi/trainbot-1
ls

git config --global user.name "CosmaP"
git config --global user.email "cosma@papouis.net"

git clone https://github.com/robot-websockets/proximity-tester.git
git clone https://github.com/robot-websockets/motor-controller.git
git clone https://github.com/robot-websockets/trainbot-1-commands.git

cd /home/pi/trainbot-1/motor-controller
pip3 install "python-socketio[client]"

cd /home/pi/trainbot-1/proximity-tester
npm install

cd /home/pi/trainbot-1/trainbot-1-commands
git checkout master
pm2 start ecosystem.config.js
pm2 save
pm2 startup
