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
wget -nv https://files.pythonhosted.org/packages/33/bc/fa0b5347139cd9564f0d44ebd2b147ac97c36b2403943dbee8a25fd74012/virtualenv-16.0.0.tar.gz
tar xvfz virtualenv-16.0.0.tar.gz
cd virtualenv-16.0.0
python setup.py install
cd /

#!/bin/bash
for file in /u14pytall/version/*;
do
  $file
done
