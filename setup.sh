#!/bin/bash

# Install dependencies
sudo dnf install -y \
    neovim \
    kitty \
    fish \
    util-linux-user

# Install JetBrains Mono font
mkdir -p ~/.local/share/fonts 
cp "JetBrains Mono Regular Nerd Font Complete.ttf" ~/.local/share/fonts
fc-cache -f -v 

# Install starship
sudo dnf copr enable atim/starship
sudo dnf install starship

# Install configuraion files
mkdir -p ~/.config/fish
cp config.fish ~/.config/fish/
cp fish_variables ~/.config/fish/
cp starship.toml ~/.config/
mkdir -p ~/.config/kitty
cp kitty.conf ~/.config/kitty/
cp current-theme.conf ~/.config/kitty/

# Set shell to Fish
chsh -s $(which fish)
