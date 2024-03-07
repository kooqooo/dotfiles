PYTHON_VER="3.10"
sudo add-apt-repository -y ppa:deadsnakes/ppa
apt-get update
sudo apt install -y python$PYTHON_VER
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
rm get-pip.py
sudo apt install python-is-python3

# sudo update-alternatives --config python3

# sudo ln -sf /usr/bin/python$PYTHON_VER /usr/bin/python
