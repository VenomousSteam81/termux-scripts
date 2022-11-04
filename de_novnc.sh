#!/data/data/com.termux/files/usr/bin/env bash

clear

cd $HOME

echo 'Installing https://github.com/Yisus7u7/termux-desktop-xfce/blob/main/README-en.md desktop and noVNC proxy directly in Termux, please wait...'

sleep 3
clear

apt update -y
apt upgrade -y
apt install -y proot-distro git curl

clear
echo 'Installed and updated packages, now installing desktop and cloning noVNC...'
sleep 3

curl -sLf https://raw.githubusercontent.com/Yisus7u7/termux-desktop-xfce/main/boostrap.sh | bash
git clone https://github.com/noVNC/noVNC

clear
echo 'Done... follow next steps'

sleep 3
clear

echo 'To start the vnc server, run vncserver'
echo 'To stop it, run vncserver -kill :x, where x is the server port'
echo 'To start the proxy, cd into noVNC, run vncserver, then ./utils/novnc_proxy --vnc localhost:59xx, where xx is the server port'
echo 'Make sure to leave issue reports on the GitHub page, https://github.com/VenomousSteam81/termux-scripts, if you run into errors or issues with these scrips!'
