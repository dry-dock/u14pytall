#!/bin/bash -e

# install python prereqs
add-apt-repository -y ppa:deadsnakes/ppa
apt-get update
pip install requests[security]
apt-get install -y libxml2 libxml2-dev libxslt1.1 libxslt1-dev libffi-dev libssl-dev libpq-dev libmysqlclient-dev
pip install setuptools 

# Installing virtualenv-15.1.0
wget -nv https://pypi.python.org/packages/d4/0c/9840c08189e030873387a73b90ada981885010dd9aea134d6de30cd24cb8/virtualenv-15.1.0.tar.gz#md5=44e19f4134906fe2d75124427dc9b716
tar xvfz virtualenv-15.1.0.tar.gz
cd virtualenv-15.1.0
python setup.py install
cd /

#!/bin/bash
for file in /u14pytall/version/*;
do
  $file
done
