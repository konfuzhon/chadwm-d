#!/bin/bash

sudo xbps-install -Sy base-devel git xorg xinit libX11-devel libXft-devel libXinerama-devel freetype-devel fontconfig-devel
sudo xbps-install -y dash imlib2 imlib2-devel xsetroot nerd-fonts picom feh kitty acpi rofi htop fastfetch
cd ~/.config/chadwm
mv eww ..
mv rofi ..
mv kitty ..
cd chadwm
sudo make install
alias chadwm='startx ~/.config/chadwm/scripts/run.sh'
