echo "creating git user"
useradd git -m -d /home/git
echo "setting password for user git"
passwd git
echo "downloading gogs installation"
wget https://dl.gogs.io/0.11.86/gogs_0.11.86_raspi2_armv6.zip -O gogs.zip
unzip gogs.zip
echo "removing gogs.zip file" 
rm gogs.zip
echo "moving gogs folder to /home/git"
mv gogs /home/git/gogs
chown -R git gogs
cd /home/git/gogs
echo "creating database and database user"
read -s -p "Enter new gogs database user password " gogsdbpw 
echo "opening database using root (prompting for root database password)"
mysql -u root -p -e "DROP DATABASE IF EXISTS gogs; CREATE DATABASE IF NOT EXISTS gogs CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci; CREATE USER gogs; GRANT ALL PRIVILEGES ON gogs.* TO 'gogs@%' IDENTIFIED BY \"$gogsdbpw\"; FLUSH PRIVILEGES;"
echo "created database and database user"
su git
echo "starting gogs configuration"
./gogs web
exit
