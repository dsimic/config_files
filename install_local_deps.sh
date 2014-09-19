#! /usr/bin/env zsh

# setup prezto
PREZTO_HOME="${ZDOTDIR:-$HOME}/.zprezto"
if [ ! -d $PREZTO_HOME ]; then
git clone --recursive https://github.com/sorin-ionescu/prezto.git \
    $PREZTO_HOME
fi

setopt EXTENDED_GLOB

for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# set up vundle (vim plugin manager)
VUNDLE_HOME="${ZDOTDIR:-$HOME}/.vim/bundle/vundle"
if [ ! -d  $VUNDLE_HOME ]; then 
    git clone --recursive https://github.com/gmarik/vundle.git \
        $VUNDLE_HOME
fi
