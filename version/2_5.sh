	#!/bin/bash -e

echo "================= Installing Python 2.5.6 ==================="
sudo add-apt-repository -y ppa:deadsnakes/ppa
apt-get update
sudo apt-get install -y \
  python2.5=2.5*	 \
  python-dev=2.7* \
  python-pip=1.5* \
  python-virtualenv=1.11*

# Install virtualenv
virtualenv -p python $HOME/venv/2.5

# Install pip packages
. $HOME/venv/2.5/bin/activate
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage
CFLAGS="-O0" pip install lxml
deactivate
echo "================= Successfully Installed Python 2.5 ==================="
