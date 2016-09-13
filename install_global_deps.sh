sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install python-pip git tmux vim zsh mutt python-dev curl
sudo apt-get -y install libpq-dev
sudo apt-get -f openssh-server
# install virtualenvwrapper
sudo pip install -U pip
sudo pip install -U virtualenvwrapper
sudo pip install -U fabric
# get original user
ORIG_USER=`who am i | awk '{print $1}'`
echo $ORIG_USER
# set zsh as default shell
chsh -s `which zsh` $ORIG_USER
