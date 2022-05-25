#!/bin/bash

# # setup proxy
# eval $(curl -s deploy.i.brainpp.cn/httpproxy)

# # setup zsh
# sudo apt update
# sudo apt install -y zsh curl git tmux
# sudo chsh `whoami` -s /bin/zsh
# curl -L https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash
# sed -e 's/plugins=([^)]*)/plugins=(gitfast tmux)/g' -i ~/.zshrc
# sed -e 's/# export PATH/export PATH/g' -i ~/.zshrc

# setup xssh
mkdir ~/bin
curl -L https://raw.github.com/bbtfr/dotfiles/master/scripts/open -o ~/bin/open
curl -L https://raw.github.com/bbtfr/dotfiles/master/scripts/code -o ~/bin/code
chmod a+x ~/bin/*