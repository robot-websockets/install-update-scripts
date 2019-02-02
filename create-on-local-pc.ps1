# wook in progress do not use
Remove-Item  c:\dev\xxfffoo  -Recurse -Force

mkdir  c:\dev\xxfffoo

cd c:\dev\xxfffoo
# ls
git clone https://github.com/robot-websockets/proximity-tester.git
git clone https://github.com/robot-websockets/motor-controller.git
git clone https://github.com/robot-websockets/trainbot-1-commands.git

# git clone https://github.com/robot-websockets/barcode-server.git
git clone https://github.com/robot-websockets/main-server.git
git clone https://github.com/robot-websockets/openCV-server.git

cd proximity-tester
npm install
ls

pip3 install Flask Flask-Cors

cd C:\Dev\2019\hackhorsham\_pi_3\bash
