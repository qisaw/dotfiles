#! /bin/bash
 
set -euo pipefail

INTERNAL_NODE_VERSION=${NODE_VERSION_TO_INSTALL:=12.4.1}

echo "============================================================="
echo "                 Setting up config for bash                  "
echo "============================================================="
echo "source ~/dotfiles/.bash_profile" >> ~/.bash_profile

echo "============================================================="
echo "                    Installing oh-my-zsh                     "
echo "============================================================="
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# TODO add zsh installation
echo "source ~/dotfiles/bash/.zsh_profile" >> ~/.zshrc

echo "=================== Sourcing bash_profile ==================="
source ~/.bash_profile

echo "====================== Installing Node ======================"
nvm install ${INTERNAL_NODE_VERSION}

echo "====================== Installing Yarn ======================"
npm install -g yarn

echo "================= Installing Autosuggestions ================="
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "============================================================="
echo "            Finished! Your bash Setup is complete            "
echo "============================================================="
