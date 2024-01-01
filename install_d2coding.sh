sudo apt-get install wget unzip

mkdir ~/.local/share/fonts
cd ~/.local/share/fonts

sudo wget https://github.com/naver/d2codingfont/releases/download/VER1.3.2/D2Coding-Ver1.3.2-20180524.zip
sudo unzip -d /usr/share/fonts/d2coding D2Coding-Ver1.3.2-20180524.zip
rm D2Coding-Ver1.3.2-20180524.zip

sudo fc-cache -f -v

cd ~
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

