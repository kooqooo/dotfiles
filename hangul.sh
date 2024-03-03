# 패키지 설치
sudo apt install -y language-pack-ko

# 로케일 설치
sudo locale-gen ko_KR.UTF-8

# 패키지 재성정
sudo dpkg-reconfigure locales

# 환경변수 설정
export LANGUAGE=ko_KR.UTF-8
export LANG=ko_KR.UTF-8

# shrc에 추가하기
if [ -f ~/.zshrc ]; then
    echo -e "export LANGUAGE=ko_KR.UTF-8\nexport LANG=ko_KR.UTF-8" >> ~/.zshrc
else
    echo -e "export LANGUAGE=ko_KR.UTF-8\nexport LANG=ko_KR.UTF-8" >> ~/.bashrc
fi
