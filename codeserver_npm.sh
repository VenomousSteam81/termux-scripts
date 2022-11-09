#!/data/data/com.termux/files/usr/bin/env bash

clear
cd $HOME
echo "Installing codeserver with npm"
echo "THIS MAY TAKE A WHILE..."
sleep 3
clear

# update and upgrade packages
pkg update -y
pkg upgrade -y

# install dependency requirements
pkg install -y \
  build-essential \
  binutils \
  pkg-config \
  python3 \
  nodejs-lts
npm config set python python3
node -v
clear

echo "Complete! Now installing NPM..."
sleep 3

# install NPM
apt-get install -y \
  build-essential \
  pkg-config \
  python3
npm config set python python3
clear

echo "Done! Finally installing code-server"
sleep 3
npm install --global code-server --unsafe-perm
clear
echo "Complete! Now visit http://127.0.0.1:8080," 
echo "or your device's wifi IP address,"
echo "followed by :8080"
echo "Your password is in ~/.config/code-server/config.yaml"
