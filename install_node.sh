echo "downloading node v11"
wget https://nodejs.org/dist/v11.12.0/node-v11.12.0-linux-armv6l.tar.xz
echo "unzipping (tar.xz) node v11"
tar xf node-v11.12.0-linux-armv6l.tar.xz
echo "removing node-v11.12.0-linux-armv6l.tar.xz file"
rm node-v11.12.0-linux-armv6l.tar.xz
cd node-v11.12.0-linux-armv6l
mv bin/node  /usr/bin/node
mv bin/npm /usr/bin/npm
mv bin/npx /usr/bin/npx
echo "installed node to /usr/bin/node"
echo "installed npm to /usr/bin/npm"
echo "installed npx to /usr/bin/npx"
cd ..
echo "removing node-v11.12.0-armv6l folder"
rm -rf node-v11.12.0-linux-armv6l

