#!/bin/bash -e

echo "================= Installing Python 3.4 ==================="
sudo apt-get install -y \
  python3.4=3.4.8-1ubuntu1~14.04.6 \
  python3.4-dev=3.4.8-1ubuntu1~14.04.6

# Install virtualenv
virtualenv -p python3.4 $HOME/venv/3.4

# Install pip packages
. $HOME/venv/3.4/bin/activate
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage
CFLAGS="-O0" pip install lxml
deactivate
echo "================= Successfully Installed Python 3.4 ==================="
