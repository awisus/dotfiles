#!/bin/bash

dir=$(pwd)

mv $HOME/.bashrc $HOME/.bashrc.bak
ln -s ${dir}/.bashrc $HOME/.bashrc
 
mv $HOME/.gitconfig $HOME/.gitconfig.bak
ln -s ${dir}/.gitconfig $HOME/.gitconfig
 
mv $HOME/.profile $HOME/.profile.bak
ln -s ${dir}/.profile $HOME/.profile
 
mv $HOME/.rc $HOME/.rc.bak
ln -s ${dir}/.rc $HOME/.rc
 
mv $HOME/.tmux.conf $HOME/.tmux.conf.bak
ln -s ${dir}/.tmux.conf $HOME/.tmux.conf
 
mv $HOME/.zprofile $HOME/.zprofile.bak
ln -s ${dir}/.zprofile $HOME/.zprofile
 
mv $HOME/.zshrc $HOME/.zshrc.bak
ln -s ${dir}/.zshrc $HOME/.zshrc

if [[ "$OSTYPE" == "darwin"* ]]; then
    lazygit_config_path="$HOME/Library/Application Support/lazygit/config.yml"
else
    lazygit_config_path="$HOME/.config/lazygit/config.yml"
fi
mv "${lazygit_config_path}" "${lazygit_config_path}".bak
ln -s ${dir}/lazygit.yml "${lazygit_config_path}" 
