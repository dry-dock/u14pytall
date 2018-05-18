#!/bin/bash -e

echo "================= Installing Python 3.1 ==================="
sudo apt-get install -y \
  python3.1=3.1*	 \
  python3-dev=3.4* \
  python-pip=1.5* \
  python-virtualenv=1.11*

# Install virtualenv
virtualenv -p python $HOME/venv/3.1


echo "================= Successfully Installed Python 3.1 ==================="
