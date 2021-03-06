#!/usr/bin/env bash
cd -P -- "$(dirname -- "$0")"
set -e


# Path Maker
mkdir -p $HOME/.config/fish/functions/
mkdir -p $HOME/.config/nvim/


# Copy Dotfiles
cp -f dotfiles/bash_aliases.sh  $HOME/.bash_aliases
cp -f dotfiles/bash_profile.sh  $HOME/.bash_profile
cp -f dotfiles/bash_prompt.sh   $HOME/.bash_prompt
cp -f dotfiles/bashrc.sh        $HOME/.bashrc

cp -f dotfiles/fish/config.fish $HOME/.config/fish/config.fish
cp -f dotfiles/fish/functions/* $HOME/.config/fish/functions/

cp -f dotfiles/gitconfig.ini    $HOME/.gitconfig
cp -f dotfiles/gitignore.txt    $HOME/.gitignore

cp -f dotfiles/tarsnaprc.txt    $HOME/.tarsnaprc
cp -f dotfiles/tmux.conf        $HOME/.tmux.conf

cp -f dotfiles/editorconfig.ini $HOME/.editorconfig
cp -f dotfiles/vimrc.vim        $HOME/.vimrc
cp -f dotfiles/nvimrc.vim       $HOME/.config/nvim/init.vim


# Install vim-plug
read -p "Press ENTER to install vim-plug, or press ^C to abort... "
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

