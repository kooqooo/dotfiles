# Basic Setting
sudo apt-get update
sudo apt-get install -y vim curl awscli python3-pip tmux fonts-powerline git-lfs tree
sudo apt -y autoremove
pip3 install -U pip

# github profile
git config --global user.email "your_email@example.com"
git config --global user.name "your_name"

# For save hugginface hub credential
git config --global credential.helper store

# vscode as git commit editor
git config --global core.editor "code --wait"

# github lg alias
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"