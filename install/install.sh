#! /bin/bash
set -euo pipefail

echo "============================================================="
echo "                    Setting up dotfiles                      "
echo "============================================================="

cd $HOME/dotfiles/bash/install
./install.sh

cd $HOME/dotfiles/homebrew/install
./install.sh

cd $HOME/dotfiles/.vim/install
./install.sh

echo "============================================================="
echo "                Finished! Setting up dotfiles                "
echo "============================================================="
