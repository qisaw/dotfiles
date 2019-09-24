# Vim

## Prerequsites
* [ctags](https://github.com/universal-ctags/homebrew-universal-ctags)
* [nodeJS](https://github.com/nvm-sh/nvm)
* Yarn `npm install -g yarn`


## Introduction
This is my current vim config. I currently use [neovim](https://neovim.io/), but this should work for any vim distro where vim 8+.

**Warning: I have not tested this config in any other vim distro. I did use [MacVim](https://github.com/macvim-dev/macvim) a while ago, but have since re-written this config.**

**I use a custom keyboard, [Wasiqman](https://github.com/qisaw/wasiqman) so have a whole bunch of key remappings to ensure that I use the home row as much as possible.
  These mappings are all defined in `config/.vim/keys.vim` but also propoagte through the rest of the `.vim` files e.g. `config/.vim/window.vim`. You'll probably want to look through these vim files and re-write what you don't like before using it blindly.**

## Installation
1. You need to clone this repository into `$HOME/config`
~~~
cd $HOME
git clone git@github.com:qisaw/config.git
~~~
2. NeoVim expects it's `init.vim` file to be in `$HOME/.config/nivm/init.vim` so you'll need to create this file
~~~
mkdir -p $HOME/.config/nvim
touch $HOME/.config/nvim/init.vim
~~~
3. You'll need to add a source line in the `init.vim` file to source the `init.vim` file in this repository. You can do this by adding `source ~/config/.vim/init.vim` to the `~/.config/nvim/init.vim` file
4. Open nvim and run `:PluginInstall` to install all plugins I use.
5. Symlink the coc-settings file to where [coc.nvim](https://github.com/neoclide/coc.nvim) expects it to be
~~~
ln -s ~/config/.vim/coc/coc-settings.json ~/.config/nvim/coc-settings.json
~~~
6. Close nvim and install all the [coc.nvim](https://github.com/neoclide/coc.nvim) extensions by running `~/config/.vim/coc/setup.sh`
7. Download and install the correct font from [here](https://github.com/powerline/fonts). Link to exact font [here](https://github.com/powerline/fonts/blob/master/Meslo%20Slashed/Meslo%20LG%20L%20Regular%20for%20Powerline.ttf)

You are done!!! Enjoy my nvim config

