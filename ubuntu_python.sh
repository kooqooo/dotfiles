PYTHON_VER="3.10"
sudo add-apt-repository -y ppa:deadsnakes/ppa
apt-get update
sudo apt install -y python$PYTHON_VER
sudo ln -sf /usr/bin/python$PYTHON_VER /usr/bin/python

# sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.10
# sudo update-alternatives --config python3
# sudo apt install python-is-python3
