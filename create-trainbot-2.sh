#!/bin/bash

# install the latest version of node
cd /home/pi
wget https://nodejs.org/dist/v10.15.1/node-v10.15.1-linux-armv7l.tar.gz
tar -xzf node-v10.15.1-linux-armv7l.tar.gz
cd node-v10.15.1-linux-armv7l/
sudo cp -R * /usr/local/
cd ..
rm -r node-v10.15.1-linux-armv7l/
rm node-v10.15.1-linux-armv7l.tar.gz
node -v
npm -v

sudo npm install pm2 -g
sudo pm2 completion install

mkdir /home/pi/trainbot-2
cd /home/pi/trainbot-2

# insert your github details
# this is needed if you need to do a pull request
# or if it is a repo that you need to log in to download.
# git config --global user.name "username"
# git config --global user.email "username@hotmail.com"


git clone https://github.com/robot-websockets/barcode-server.git
git clone https://github.com/robot-websockets/main-server.git
git clone https://github.com/robot-websockets/openCV-server.git
git clone https://github.com/robot-websockets/trainbot-2-commands.git

sudo apt-get  -y install libatlas-base-dev libjasper-dev libqtgui4 python3-pyqt5 libzbar0 libhdf5-dev libhdf5-serial-dev libqt4-test

pip3 install "python-socketio[client]" Flask Flask-Cors requests pyzbar opencv-contrib-python

cd /home/pi/trainbot-2/main-server
npm install

# if you don't have a proximity sensor use this instead.
# git clone https://github.com/robot-websockets/proximity-tester.git
# cd /home/pi/trainbot-all/proximity-tester
# npm install


pm2 start /home/pi/trainbot-2/trainbot-2-commands/ecosystem.config.js
pm2 save

# copy and paste the output from the following.
pm2 startup
pm2 save