#! /bin/bash

# install vimrc
VIMRC_HOME=~/.vimrc
if [ -f $VIMRC_HOME ]; then
    cp ${VIMRC_HOME} ${VIMRC_HOME}.old
fi
cp .vimrc ~/.vimrc

# install tmux.conf
TMUXCONF_HOME=~/.tmux.conf
if [ -f $TMUXCONF_HOME ]; then
    cp $TMUXCONF_HOME ${TMUXCONF_HOME}.old
fi
cp .tmux.conf ${TMUXCONF_HOME}

# install zshrc
ZSHRC=~/.zshrc
if [ -f $ZSHRC ]; then
    cp $ZSHRC ${ZSHRC}.old
fi
cp .zshrc $ZSHRC


# no .muttrc install, as requires customization

# random git config
git config --global push.default matching
