#!/bin/bash

rm ~/.zshrc
rm ~/.pentadactylrc
rm -r ~/.pentadactyl
rm ~/.tmux.conf
rm ~/.zlogin
rm ~/.zlogout
rm ~/.zpreztorc
rm -r ~/.zprezto
rm ~/.zshenv
rm ~/.zprofile
rm ~/.screenrc
rm ~/.vimrc
rm -r ~/.vim

cd ~
ln -s ~/.dotfiles/.zshrc ~/.zshrc 
ln -s ~/.dotfiles/.pentadactylrc ~/.pentadactylrc 
ln -s ~/.dotfiles/.pentadactyl ~/.pentadactyl 
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf 
ln -s ~/.dotfiles/.zlogin ~/.zlogin 
ln -s ~/.dotfiles/.zlogout ~/.zlogout 
ln -s ~/.dotfiles/.zpreztorc ~/.zpreztorc 
ln -s ~/.dotfiles/.zprezto ~/.zprezto 
ln -s ~/.dotfiles/.zshenv ~/.zshenv 
ln -s ~/.dotfiles/.zprofile ~/.zprofile 
ln -s ~/.dotfiles/.screenrc ~/.screenrc 
ln -s ~/.dotfiles/.vimrc ~/.vimrc 
ln -s ~/.dotfiles/.vim ~/.vim 

