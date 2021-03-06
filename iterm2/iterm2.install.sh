#!/bin/sh
set -e

DOTFILES=~/.dotfiles

defaults write com.googlecode.iterm2 PrefsCustomFolder -string "$DOTFILES/iterm2"
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -int 1

echo "Linking $DOTFILES/iterm2/profiles to ~/Library/Application Support/iTerm2/DynamicProfiles"

mkdir -p "~/Library/Application Support/iTerm2/"
rm -rf "~/Library/Application Support/iTerm2/DynamicProfiles"

ln -sfF $DOTFILES/iterm2/profiles ~/Library/Application\ Support/iTerm2/DynamicProfiles
