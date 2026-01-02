#!/bin/bash

sudo xbps-install -Sy base-devel xorg xinit libX11-devel libXft-devel libXinerama-devel freetype-devel fontconfig-devel
sudo xbps-install -y neovim dash imlib2 imlib2-devel xsetroot nerd-fonts picom feh kitty acpi rofi btop htop fastfetch
cd ~/.config/chadwm
mv eww ..
mv rofi ..
mv kitty ..
mv nvim ..
mv btop ..
cd chadwm
sudo make install
echo "alias chadwm='startx ~/.config/chadwm/scripts/run.sh'" >> ~/.bashrc
echo "alias fetch='/home/$USER/.config/chadwm/scripts/fetch'" >> ~/.bashrc
echo "Installation complete!"
echo "Please reboot your computer."
