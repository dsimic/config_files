apt-get -y update
apt-get -y upgrade
apt-get -y install python-pip git tmux vim zsh mutt
# set zsh as default shell
chsh -s `which zsh`
# install virtualenvwrapper
pip install -U virtualenvwrapper
