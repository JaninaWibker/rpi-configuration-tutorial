echo "downloading ddclient 3.9.0 from sourceforge"
wget https://sourceforge.net/projects/ddclient/files/ddclient/ddclient-3.9.0/ddclient-3.9.0.tar.gz/download -O ddclient-3.9.0.tar.gz
echo "unzipping ddclient 3.9.0"
tar -xvzf ddclient-3.9.0.tar.gz
echo "removing ddclient-3.9.0.tar.gz"
rm ddclient-3.9.0.tar.gz
echo "creating directories for ddclient (/etc/ddclient/, /var/cache/ddclient/)"
mkdir /etc/ddclient
mkdir /var/cache/ddclient
echo "creating empty config file (/etc/ddclient/ddclient.conf)"
touch /etc/ddclient/ddclient.conf
echo "installing ddclient dependencies"
apt-get install libdata-validate-ip-perl libjson-any-perl libio-socket-ssl-perl sendmail -y
echo "installing ddclient to /usr/sbin"
mv ddclient-3.9.0/ddclient /usr/sbin
echo "removing ddclient-3.9.0 directory"
