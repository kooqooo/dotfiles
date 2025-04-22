sudo apt update
sudo apt install -y nodejs npm fzf

cp -i .vimrc > ~/

echo '이후에 vim 켜고'
echo ':PlugInstall'
echo ':CocInstall coc-tsserver coc-pyright'
