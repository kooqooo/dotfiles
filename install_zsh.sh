# Install zsh
THEME="agnoster"
# THEME="spaceship"
sudo apt install -y zsh
sudo chsh -s /bin/zsh "$USER"

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Install oh-my-zsh plugins
## zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

## zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# # Install spaceship theme
if [ ! -d ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship-prompt ]; then
    git clone https://github.com/denysdovhan/spaceship-prompt.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship-prompt --depth=1
fi
ln -s ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship-prompt/spaceship.zsh-theme ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship.zsh-theme

sed -i 's/robbyrussell/$THEME/g' ~/.zshrc
ORIGINAL="plugins=(git)"
NEW="plugins=(git\n\t\ttmux\n\t\tzsh-autosuggestions\n\t\tzsh-syntax-highlighting)"
bash -c sed -i ":a;N;\$!ba;s/$ORIGINAL/$NEW/g" ~/.zshrc

cat << EOF >> ~/.zshrc

prompt_end() {
  if [[ -n \$CURRENT_BG ]]; then
    echo -n " %{%k%F{\$CURRENT_BG}%}\$SEGMENT_SEPARATOR"
  else
    echo -n "%{%k%}"
  fi
  echo -n "\n%{%F{\$CURRENT_BG}%}\$SEGMENT_SEPARATOR%{%f%}"
  CURRENT_BG=''
}\n
EOF

# add alias
echo 'alias wa="watch -n .2 nvidia-smi"' >> ~/.zshrc
echo 'alias vz="vim ~/.zshrc"' >> ~/.zshrc
echo 'alias sz="source ~/.zshrc"' >> ~/.zshrc
source ~/.zshrc

# Copy .zshrc
# cp -rf zshrc/ubuntu ~/.zshrc
