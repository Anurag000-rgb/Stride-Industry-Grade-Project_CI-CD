yum install gcc openssl-devel bzip2-devel -y
cd /usr/src
wget https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz
tar xzf Python-2.7.18.tgz
cd Python-2.7.18
./configure --enable-optimizations
make altinstall
/usr/local/bin/python2.7 -V
rpm -qa | grep zlib
sudo yum install zlib -y
# Automating the installing of python2.7 and setup