# Vim

## Prerequsites
* [ctags](https://github.com/universal-ctags/homebrew-universal-ctags)
* [nodeJS](https://github.com/nvm-sh/nvm)
* [yarn](https://yarnpkg.com/lang/en/)
* [neovim](https://neovim.io/)
* [vim-plug](https://github.com/junegunn/vim-plug)


## Introduction
This is my current vim config. I currently use [neovim](https://neovim.io/), but this should work for any vim distro where vim 8+.

**Warning: I have not tested this config in any other vim distro. I did use [MacVim](https://github.com/macvim-dev/macvim) a while ago, but have since re-written this config.**

**I use a custom keyboard, [Wasiqman](https://github.com/qisaw/wasiqman) so have a whole bunch of key remappings to ensure that I use the home row as much as possible.
  These mappings are all defined in `dotfiles/.vim/keys.vim` but also propoagte through the rest of the `.vim` files e.g. `config/.vim/window.vim`. You'll probably want to look through these vim files and re-write what you don't like before using it blindly.**

## Installation
1. You need to clone this repository into `$HOME/dotfiles`
    ~~~
    cd $HOME
    git clone git@github.com:qisaw/dotfiles.git
    ~~~
1. NeoVim expects it's `init.vim` file to be in `$HOME/.config/nivm/init.vim` so you'll need to create this folder
    ~~~
    mkdir -p $HOME/.config/nvim
    ~~~
1. You'll need to add a source line in the `init.vim` file to source the `init.vim` file in this repository. You can do this by adding `source ~/dotfiles/.vim/init.vim` to the `~/.config/nvim/init.vim` file
    ~~~
    echo "source ~/dotfiles/.vim/init.vim" > ~/.config/nvim/init.vim
    ~~~
1. Install [vim-plug](https://github.com/junegunn/vim-plug)
    ~~~
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ~~~
1. Open nvim and run `:PlugInstall` to install all plugins I use.
1. Symlink the coc-settings file to where [coc.nvim](https://github.com/neoclide/coc.nvim) expects it to be
    ~~~
    ln -s ~/dotfiles/.vim/coc/coc-settings.json ~/.config/nvim/coc-settings.json
    ~~~
1. Close nvim and install all the [coc.nvim](https://github.com/neoclide/coc.nvim) extensions by running `~/dotfiles/.vim/coc/setup.sh`
1. Download and install the correct font from [here](https://github.com/powerline/fonts). Link to exact font [here](https://github.com/powerline/fonts/blob/master/Meslo%20Slashed/Meslo%20LG%20L%20Regular%20for%20Powerline.ttf)
1. If you are not using a gui vim instance (GVIM or MacVim) set your terminal font to the font you downloaded

You are done!!! Enjoy my nvim config

