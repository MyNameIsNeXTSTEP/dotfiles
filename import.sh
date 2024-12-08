#!/usr/bin/env bash

brew bundle dump --force --file=~/.brewfile && cp ~/.brewfile .brewfile
cp ~/.bashrc .bashrc
cp ~/.tmux.conf .tmux.conf
rm -drf .config && mkdir .config && cp -r ~/.config/nvim .config/nvim
