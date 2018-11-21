#!/bin/bash -e

# install python prereqs
sudo add-apt-repository ppa:jonathonf/python-2.7
add-apt-repository -y ppa:deadsnakes/ppa
apt-get update
pip install requests[security]
apt-get install -y libxml2 libxml2-dev libxslt1.1 libxslt1-dev libffi-dev libssl-dev libpq-dev libmysqlclient-dev
wget -nv https://bootstrap.pypa.io/3.2/get-pip.py
python get-pip.py
python -m pip install --upgrade pip


# Installing virtualenv
export PYTHONVIRTUALENV=16.1.0
echo "================= Installing python $PYTHONVIRTUALENV =============="
sudo pip install -q virtualenv=="$PYTHONVIRTUALENV"

#!/bin/bash
for file in /u14pytall/version/*;
do
  $file
done
