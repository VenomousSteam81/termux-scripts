#!/data/data/com.termux/files/usr/bin/env bash

clear

#this script will configure a graphical user interface 
#(xfce4, credits to @Yisus7u7)
#inside an ubuntu distro
#(proot) in termux
#creator: VenomousSteam81

cd $HOME
echo 'Install process may take a while! Sit tight, maybe grab some coffee'
echo 'Installing Ubuntu with https://github.com/Yisus7u7/termux-desktop-xfce/blob/main/README-en.md desktop and noVNC proxy, please wait...'

sleep 3
clear

apt -y update
apt -y upgrade
apt install -y proot-distro curl

clear
echo 'Installed and updated packages, now installing Ubuntu...'
sleep 3

proot-distro install ubuntu
echo 'Installed Ubuntu, now logging in...'
sleep 2
proot-distro login ubuntu

clear

echo 'Installing nessecary packages, you might need to hit enter...'
apt install git curl
curl -sLf https://raw.githubusercontent.com/Yisus7u7/termux-desktop-xfce/main/boostrap.sh | bash
git clone https://github.com/noVNC/noVNC
echo 'Done... follow next steps'

sleep 1
clear

echo 'To start the vnc server, run vncserver -listen tcp'
echo 'To start the proxy, cd into noVNC, run vncserver, then ./utils/novnc_proxy --vnc localhost:59xx, where xx is the port number of vncserver'
echo 'Make sure to leave issue reports on the GitHub page, https://github.com/VenomousSteam81/termux-scripts, if you run into errors or issues with these scrips!'
