#!/bin/bash -e

echo "================= Installing Python 3.5 ==================="
sudo apt-get install -y \
  python3.5=3.5* \
  python3.5-dev=3.5*

# Install virtualenv
virtualenv -p python3.5 $HOME/venv/3.5

# Install pip packages
. $HOME/venv/2.7/bin/activate
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage
CFLAGS="-O0" pip install lxml
deactivate
echo "================= Successfully Installed Python 3.5 ==================="
