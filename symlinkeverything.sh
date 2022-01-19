#!/bin/bash

# remove any previous symlinks/files
rm ~/.config/nvim/init.vim
rm ~/.tmux.conf
rm ~/.config/kitty/kitty.conf
rm ~/.config/fish/config.fish

# create the symlinks so only have to modify in this directory
ln -s ~/dotfiles/vim/init.vim ~/.config/nvim/init.vim
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/kitty.conf ~/.config/kitty/kitty.conf
ln -s ~/dotfiles/config.fish ~/.config/fish/config.fish

