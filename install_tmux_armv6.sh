echo "cloning tmux repository"
git clone https://github.com/tmux/tmux.git
cd tmux
echo "configuring tmux source code for building"
./autogen.sh
./configure
echo "building tmux from source"
make
echo "moving tmux into /usr/bin"
rm /usr/bin/tmux
mv tmux /usr/bin/tmux
cd ..

echo "copying tmux configuration  (this may have some errors since versions might be missmatched, remove .tmux.conf or fix them for the installed version)"
wget https://cdn.jannik.ml/tmux.conf -O /.tmux.conf
