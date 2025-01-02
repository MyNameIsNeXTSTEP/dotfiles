#!/usr/bin/env bash

HOMEBREW_NO_AUTO_UPDATE=1 brew bundle dump --force --file=~/.brewfile && cp ~/.brewfile .brewfile # update brewfile
cp ~/.bashrc .bashrc                                                                              # update bashrc file
cp ~/.tmux.conf .tmux.conf                                                                        # update tmux config
rm -drf .config && mkdir .config && cp -r ~/.config/nvim .config/nvim                             # update nvim config
