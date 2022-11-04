clear
echo 'Install process may take a while! Sit tight, maybe grab some coffee'
echo 'Installing Ubuntu with https://github.com/Yisus7u7/termux-desktop-xfce/blob/main/README-en.md desktop and noVNC proxy, please wait...'
pkg update -y
pkg upgrade -y
pkg i proot-distro -y
echo 'Installed and updated packages, now installing Ubuntu'
proot-distro install ubuntu
echo 'Installed Ubuntu, now logging in...'
wait 3
proot-distro login ubuntu
clear
echo 'Installing nessecary packages, you might need to hit enter...'
apt install git curl
curl -sLf https://raw.githubusercontent.com/Yisus7u7/termux-desktop-xfce/main/boostrap.sh | bash
git clone https://github.com/noVNC/noVNC
echo 'To start the server and proxy, cd into noVNC, run vncserver, then ./utils/novnc_proxy --vnc localhost:59xx, where xx is the port number of vncserver'
echo 'Make sure to leave issue reports on the GitHub page, https://github.com/VenomousSteam81/termux-scripts, if you run into errors or issues with these scrips!'
