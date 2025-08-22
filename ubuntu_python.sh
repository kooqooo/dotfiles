PYTHON_VER="3.13"
sudo add-apt-repository -y ppa:deadsnakes/ppa
apt update
sudo apt install -y python$PYTHON_VER

sudo apt-get install --reinstall -y python3-apt

sudo apt install python-is-python3
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python$PYTHON_VER get-pip.py
rm get-pip.py

pip --version
