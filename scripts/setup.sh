#!/bin/bash

# setup proxy
eval $(curl -s deploy.i.brainpp.cn/httpproxy)

# setup zsh
sudo apt update
sudo apt install -y zsh curl git tmux silversearcher-ag rclone
sudo chsh `whoami` -s /bin/zsh
curl -L https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash
sed -e 's/plugins=([^)]*)/plugins=(gitfast tmux)/g' -i ~/.zshrc
sed -e 's/# export PATH/export PATH/g' -i ~/.zshrc
sed -e '/export ZSH=/a \\n# Set "-CC" option for iTerm2 tmux integration\nZSH_TMUX_ITERM2="true"' -i ~/.zshrc

# update zsh theme
sed -e 's/fg_bold\[green\]/fg_bold\[magenta\]/g' -i ~/.oh-my-zsh/themes/robbyrussell.zsh-theme

# setup xssh remote commands
mkdir ~/bin
curl -L https://raw.github.com/bbtfr/dotfiles/master/scripts/open -o ~/bin/open
curl -L https://raw.github.com/bbtfr/dotfiles/master/scripts/code -o ~/bin/code
chmod a+x ~/bin/*

# update pip
sudo pip3 install -U pip
