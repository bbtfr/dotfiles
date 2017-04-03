#!/bin/bash -e
ZSH_THEME="theo"
ZSH_CUSTOM="~/.oh-my-zsh/custom"

# install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

mkdir -p $ZSH_CUSTOM/themes
cp zsh/themes/* $ZSH_CUSTOM/themes

cp zshrc ~/.zshrc
