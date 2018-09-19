#!/bin/bash -e

export PYTHON3_7=3.7*
export PYTHON_DEV=3.7*
echo "================= Installing Python  ==================="
sudo apt-get install -y \
python3.7="$PYTHON3_7" \
python3.7-dev="$PYTHON_DEV"

# Install virtualenv
virtualenv -p python3.7 $HOME/venv/3.7

echo "================= Successfully Installed Python  ==================="
