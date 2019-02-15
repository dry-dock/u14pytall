
#!/bin/bash -e

export PYTHON=2.7.15*
export PYTHON_DEV=2.7.15*


echo "================= Installing python  ==================="
sudo apt-get install -y \
  python2.7="$PYTHON" \
  python2.7-dev="$PYTHON_DEV"

  # Install virtualenv
  virtualenv -p python2.7 $HOME/venv/2.7
# Install pip packages
. $HOME/venv/2.7/bin/activate
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage
CFLAGS="-O0" pip install lxml
deactivate
echo "================= Successfully Installed Python $PYTHON_VERSION  ==================="
