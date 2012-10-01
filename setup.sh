#!/bin/zsh

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
ln -s ~/.dotfiles/.pentadactylrc ~/.pentadactylrc
ln -s ~/.dotfiles/.pentadactyl ~/.pentadactyl
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/.screenrc ~/.screenrc
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.vim ~/.vim

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.dotfiles/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

cd ~/.dotfiles/.vim/bundle/vim-commandt
rake make

