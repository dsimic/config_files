# get original user
ORIG_USER=`who am i | awk '{print $1}'`
echo $ORIG_USER
# set zsh as default shell
chsh -s `which zsh` $ORIG_USER
