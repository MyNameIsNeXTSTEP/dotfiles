# Dotfiles

This repository contains my configurations files on:
- [tmux](.tmux.conf)
- [neovim](/.config/nvim)
- [brew](.brewfile)
- [zsh/bash](.bashrc)
- [node templates](/node-templates)

To update locally dorfiles in the repositpry i use [import.sh](import.sh) script as executable.

> Notice, that the import script states that dotfiles are taken from the same places as declared in the script.
>
> For your own usage, first need to set the correct paths or your local system.

To make changes i do the following:

1. Go to the `dotfiles` dir of this repo
2. In a git branch i would like to push from - i run the [import.sh](import.sh) scrip.\
It copies defined files to the local dir, so the changes appear in git to them
4. Review all changes, considering i get what i expected there
5. Finally push changes to the `ditfiles` repo