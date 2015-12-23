#!/bin/sh

# vim setting
if [ ! -e ~/.vim/bundle ]; then
mkdir -p ~/.vim/bundle
fi
if [ ! -e ~/.vim/bundle/neobundle.vim ]; then
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
fi
ln -si ~/dotfiles/.vim/.vimrc ~/.vimrc

# bash setting
if [ ! -e /usr/local/git/contrib/completion/ ]; then
    mkdir -p /usr/local/git/contrib/completion/
fi
if [ ! -e /usr/local/git/contrib/completion/git-prompt.sh ]; then
    ln -s /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh /usr/local/git/contrib/completion/git-prompt.sh
fi
if [ ! -e /usr/local/git/contrib/completion/git-completion.bash ]; then
    ln -s /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash /usr/local/git/contrib/completion/git-completion.bash
fi

ln -si ~/dotfiles/.bash/.bash_profile ~/.bash_profile
ln -si ~/dotfiles/.bash/.bashrc ~/.bashrc
source ~/.bashrc
