!#/bin/bash

cd ~/.config

ln -s ~/dotfiles/dwm

cd ~/dotfiles/dwm

sudo make install

cd ~/dotfiles/dwm/dmenu

sudo make install

cd ~/dotfiles/dwm/dwmblocks

sudo make install

cd ~/dotfiles/dwm/st

sudo make install

cd ~

ln -s ~/dotfiles/.dwm

ln -s ~/dotfiles/.xinitrc

sudo mkdir /usr/share/xsessions

cd /usr/share/xsessions

sudo ln -s ~/dotfiles/dwm.desktop
