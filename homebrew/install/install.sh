#! /bin/bash
 
set -euo pipefail

echo "============================================================="
echo "                Setting up homebrew packages                 "
echo "============================================================="

echo "==================== Installing homebrew ===================="
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "==================== Installing brewfile ===================="
brew install rcmdnk/file/brew-file

echo "==================== Installing brewfile ===================="
source ~/dotfiles/bash/.bash_profile


echo "====== Setting Repository of Brewfile as qisaw/dotfile ======"
brew set_repo -r qisaw/dotfiles

echo "==================== Installing packages ===================="
brew file install

echo "============================================================="
echo "            Finished! Setting up homebrew packages           "
echo "============================================================="
