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

mangohud_config_path="$HOME/.config/MangoHud"
mkdir -p "${mangohud_config_path}"
mv "${mangohud_config_path}/MangoHud.conf" "${mangohud_config_path}/MangoHud.conf.bak"
ln -s ${dir}/MangoHud.conf "${mangohud_config_path}/MangoHud.conf"

if [[ "$OSTYPE" == "darwin"* ]]; then
    lazygit_config_path="$HOME/Library/Application Support/lazygit"
else
    lazygit_config_path="$HOME/.config/lazygit"
fi
mkdir -p "${lazygit_config_path}"
mv "${lazygit_config_path}/config.yml" "${lazygit_config_path}/config.yml.bak"
ln -s ${dir}/lazygit.yml "${lazygit_config_path}/config.yml" 
