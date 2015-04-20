apt-get -y update
apt-get -y upgrade
apt-get -y install python-pip git tmux vim zsh mutt python-dev
# install virtualenvwrapper
pip install -U virtualenvwrapper
# get original user
ORIG_USER=`who am i | awk '{print $1}'`
echo $ORIG_USER
# set zsh as default shell
chsh -s `which zsh` $ORIG_USER
