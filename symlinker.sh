#!/bin/bash
#
#Script to create symbolic links to dotfiles

# user
user="mads"
# dotfiles directory
dfd="/home/$user/git/dotfiles"
# config files directory
cfd="/home/$user/.config"
# .local directory
ldf="/home/$user/.local"

echo -e "\nSymlinking .aliases ..."
rm $cfd/.alias
ln -sv $dfd/.alias $cfd/.alias

echo -e "\nSymlinking .env ..."
rm $cfd/.env
ln -sv $dfd/.env $cfd/.env

echo -e "\nSymlinking .zshrc ..."
rm ~/.zshrc
ln -sv $dfd/.zshrc /home/$user/.zshrc

echo -e "\nSymlinking tmux config folder ..."
rm -r ~/.config/tmux
ln -sv $dfd/tmux $cfd/tmux

echo -e "\nSymlinking kitty config ..."
rm -r $cfd/kitty
ln -sv $dfd/kitty $cfd/

echo -e "\nSymlinking git congfig ..."
rm ~/.gitconfig
ln -sv $dfd/.gitconfig /home/$user/.gitconfig

echo -e "\nSynlinking p10k conifg ..."
rm ~/.p10k.zsh
ln -sv $dfd/.p10k.zsh /home/$user/.p10k.zsh

echo -e "\nSymlinking changebg.sh ..."
rm $cfd/changebg.sh
ln -sv $dfd/changebg.sh $cfd/changebg.sh
