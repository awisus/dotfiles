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

mv $HOME/.config/lazygit/config.yml $HOME/.config/lazygit/config.yml.bak
ln -s ${dir}/lazygit.yml $HOME/.config/lazygit/config.yml

mkdir -p $HOME/.config/MangoHud
mv $HOME/.config/MangoHud/MangoHud.conf $HOME/.config/MangoHud/MangoHud.conf.bak
ln -s ${dir}/MangoHud.conf $HOME/.config/MangoHud/MangoHud.conf
