echo "installing updates"
apt-get update
apt-get upgrade -y
echo "installing useful libs and programs"
apt-get install build-essential libncurses-dev libevent-dev libcurl4-openssl libglib2.0-dev uuid-dev intltool gcc g++ clang make automake autoconf pkg-config cmake lib -y

