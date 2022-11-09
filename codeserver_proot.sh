#!/data/data/com.termux/files/usr/bin/env bash

clear
cd $HOME

echo "This script will install proot-distro with code-server"
echo "THIS MAY TAKE SOME TIME"
sleep 3
clear

# update packages and install proot-distro
pkg update -y
pkg install proot-distro -y
proot-distro install debian
echo "Done! Logging into the proot-distro..."
sleep 3
clear

# login and install packages into proot-distro
proot-distro login debian
echo "Logged in! Updating and installing packages..."
sleep 2
apt update
apt upgrade -y
apt-get install sudo git -y
clear

# install nvm for nodejs, and install nodejs v16
echo "Done with updating and installing packages, now installing nvm..."
sleep 3
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
echo "You shouldn't have to insert stuff into your .bashrc or etc/profile"
export NVM_DIR="$HOME/bash-stuff/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
sleep 3
echo "Now installing NodeJS v16..."
nvm install v16

# install code-server
echo "Done! Now installing code-server..."
sleep 3
curl -fsSL https://code-server.dev/install.sh | sh
echo "Done installing code-server, so you should be able to run code-server
