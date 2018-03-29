#!/bin/sh
echo "Making Ubuntu great again..."
sudo apt-get remove --purge libreoffice*
sudo apt-get remove fonts-opensymbol libreoffice libreoffice-\* openoffice.org-dtd-officedocument1.0 python\*-uno uno-libs3-\* ure ure-dbg
sudo apt-get remove libreoffice-core
sudo apt purge ubuntu-web-launchers
sudo apt-get remove banshee
sudo apt-get remove rhythmbox
sudo apt-get remove --purge libreoffice-core
sudo apt-get purge gnome-games-common gbrainy && sudo apt-get autoremove
sudo apt-get purge aisleriot gnome-sudoku mahjongg ace-of-penguins gnomine gbrainy
sudo apt remove aisleriot gnome-mahjongg gnome-mines gnome-sudoku 
sudo apt-get purge thunderbird*
sudo apt-get purge transmission-gtk
sudo apt-get purge transmission-cli transmission-common transmission-daemon
sudo apt-get purge transmission*
sudo apt-get remove cheese
sudo apt-get purge shotwell*
sudo apt-get autoremove && sudo apt-get clean all && sudo apt-get autoclean all
#lets get the VM updated shall we
sudo apt-get update
sudo apt-get upgrade -y
#install VS Code - our text editor of choice
sudo mkdir tmp
cd tmp
sudo wget -O VSCode.deb https://go.microsoft.com/fwlink/?LinkID=760868
sudo dpkg -i VSCode.deb
sudo apt-get install -f -y
cd ..
sudo rm -rf tmp
#all done
echo "OK!"