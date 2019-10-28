#! /bin/bash
set -euo pipefail

echo "============================================================="
echo "                 Setting up config for NeoVim                "
echo "============================================================="

echo "================ Creating NVIM config folder ================"
mkdir -p $HOME/.config/nvim
echo "source ~/dotfiles/.vim/init.vim" > ~/.config/nvim/init.vim

echo "===================== Install vim-plug ======================"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "==================== Linking coc-settings ==================="
ln -s ~/dotfiles/.vim/coc/coc-settings.json ~/.config/nvim/coc-settings.json

echo "===================== Installing plugins ===================="
nvim +PlugInstall +qall

echo "==================== Installing CoC plugins ================="
../coc/setup.sh

echo "============================================================="
echo "                Finished! Your VIM Setup is complete         "
echo "============================================================="
