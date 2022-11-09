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
proot-distro install ubuntu
echo "Done! Logging into the proot-distro..."
sleep 3
clear

# login and install packages into proot-distro
proot-distro login ubuntu
echo "Logged in! Updating and installing packages..."
sleep 2
apt update
apt upgrade -y
apt-get install sudo git -y
clear

# install nvm for nodejs
echo "Done with updating and installing packages, now installing nvm..."
sleep 3
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
echo "You shouldn't have to insert stuff into your \'.bashrc\' or \'etc/profile\'"
echo "Exiting..."
sleep 4
exit

# install code-server
echo "Now, installing code-server..."
sleep 3
proot-distro login ubuntu
nvm install v16
echo "Done installing Node.JS v16, so you should be able to run \'code-server\'
