#! /bin/bash
 
set -euo pipefail

INTERNAL_NODE_VERSION=${NODE_VERSION_TO_INSTALL:=10}

echo "============================================================="
echo "                 Setting up config for bash                  "
echo "============================================================="
echo "source ~/dotfiles/.bash_profile" >> ~/.bash_profile

echo "=================== Sourcing bash_profile ==================="
source ~/.bash_profile

echo "====================== Installing Node ======================"
nvm install ${INTERNAL_NODE_VERSION}

echo "====================== Installing Yarn ======================"
npm install -g yarn

echo "============================================================="
echo "            Finished! Your bash Setup is complete            "
echo "============================================================="
