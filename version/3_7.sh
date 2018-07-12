#!/bin/bash -e

echo "================= Installing Python 3.6 ==================="
sudo apt-get install -y \
  python3.7=3.7* \
  python3.7-dev=3.7* \
  python-pip=1.5* \
  python-virtualenv=1.11*
  
# Install virtualenv	
virtualenv -p python3.7 $HOME/venv/3.7	
	
	
echo "================= Successfully Installed Python 3.6 ==================="


