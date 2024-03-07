#!/bin/bash
EMAIL="youremail@gmail.com"
NAME="kooqooo"

# Basic Setting
sudo apt update
sudo apt install -y vim curl awscli tmux fonts-powerline git-lfs tree
sudo apt -y autoremove

# github profile
git config --global user.email "$EMAIL"
git config --global user.name "$NAME"

# For save hugginface hub credential
git config --global credential.helper store

# vscode as git commit editor
git config --global core.editor "code --wait"

# github lg alias
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# ssh
ssh-keygen -t ed25519 -C "$EMAIL"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

git config user.email
git config user.name
cat ~/.ssh/id_ed25519.pub
