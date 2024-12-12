#!/usr/bin/env bash

HOMEBREW_NO_AUTO_UPDATE=1 brew bundle dump --force --file=~/.brewfile && cp ~/.brewfile .brewfile
cp ~/.bashrc .bashrc
cp ~/.tmux.conf .tmux.conf
rm -drf .config && mkdir .config && cp -r ~/.config/nvim .config/nvim
