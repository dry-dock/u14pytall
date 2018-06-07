#!/bin/bash -e

echo "================= Installing Python 2.6.9 ==================="
sudo add-apt-repository -y ppa:deadsnakes/ppa
apt-get update
sudo apt-get install -y \
  python2.6=2.6*	 \
  python-dev=2.7* \
  python-pip=1.5* \
  python-virtualenv=1.11*

# Install virtualenv
virtualenv -p python2.7 $HOME/venv/2.6

# Install pip packages
. $HOME/venv/2.6/bin/activate
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage
CFLAGS="-O0" pip install lxml
deactivate
echo "================= Successfully Installed Python 2.6 ==================="
