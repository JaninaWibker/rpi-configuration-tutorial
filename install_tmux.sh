echo "running apt-get update"
apt-get update
echo "installing tmux"
apt-get install tmux
echo "removing tmux folder"
rm -rf tmux

echo "copying tmux configuration (this may have some errors since versions might be missmatched, remove .tmux.conf or fix them for the installed version)"
wget https://cdn.jannik.ml/random/tmux.conf -O ~/.tmux.conf
