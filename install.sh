#!/bin/sh
CRTDIR=$(pwd)

if [ -f "$HOME/.vimrc" ]; then
    rm "$HOME/.vimrc"
fi

if [ -d "$HOME/.vim/" ]; then
    rm -rf "$HOME/.vim/"
fi

ln -bfs $CRTDIR/.vimrc $HOME/
ln -bfs $CRTDIR/.vim/ $HOME/
