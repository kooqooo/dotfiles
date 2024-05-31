EXISTING_PYTHON_VER="3.8"
PYTHON_VER="3.10"
sudo add-apt-repository -y ppa:deadsnakes/ppa
apt-get update
sudo apt install -y python$PYTHON_VER

sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python$EXISTING_PYTHON_VER 1
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python$PYTHON_VER 2
sudo update-alternatives --config python3

sudo apt-get remove python3-apt
sudo apt-get install python3-apt
sudo apt-get install --reinstall python3-apt

sudo apt install python-is-python3
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python$PYTHON_VER get-pip.py
rm get-pip.py

sudo update-alternatives --install /usr/bin/pip pip /usr/local/bin/pip$PYTHON_VER 1
sudo update-alternatives --config pip
pip --version

# sudo ln -sf /usr/bin/python$PYTHON_VER /usr/bin/python
