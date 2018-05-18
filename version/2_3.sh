#!/bin/bash -e

echo "================= Installing Python 2.3.7 ==================="
sudo add-apt-repository ppa:deadsnakes/ppa
apt-get update
sudo apt-get install -y \
  python2.3=2.3.7-2+trusty1 \
  python-dev=2.7.5-5ubuntu3 \
  python-pip=1.5.4-1ubuntu4 \
  python-virtualenv=1.11.4-1ubuntu1

# Install virtualenv
virtualenv -p python $HOME/venv/2.3

# Install pip packages
. $HOME/venv/2.3/bin/activate
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage
CFLAGS="-O0" pip install lxml
deactivate
echo "================= Successfully Installed Python 2.3 ==================="
