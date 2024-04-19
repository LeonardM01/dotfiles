#!/bin/bash

# Install Neovim
sudo apt-get update
sudo apt-get install neovim -y

# Create the .config/nvim directory if it doesn't exist
mkdir -p ~/.config/nvim

# Copy the contents of this file into .config/nvim
cp "$0" ~/.config/nvim/init.vim

# Optional: Install Packer plugin manager
git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Optional: Install plugins using Packer
nvim +PackerInstall +qall
