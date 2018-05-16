#!/bin/sh

sudo apt update

sudo apt install -y vlc filezilla pavucontrol

echo "1/4 - VLC & FILEZILLA & AUDIO CONTROL"

cd DEB && sudo bash ./install_all.sh

echo "2/4 - .DEBS SOFTWARE"

sudo apt install -y gimp gimp-save-for-web inkscape

sudo apt install -y lm-sensors jpegoptim optipng font-manager nautilus-share pyrenamer libimage-exiftool-perl imagemagick

echo "3/4 - GRAPHICS"

sudo apt install -y curl git

curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt update
sudo apt install nodejs python-software-properties

sudo npm install -g svgo

cd ../
sudo cp libflashplayer.so /usr/lib/firefox/browser/plugins

echo "4/4 - DEV SOFTWARE AND FLASH PLAYER (FIREFOX)"

exit
