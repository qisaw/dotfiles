# Automatic Installation (Zsh)
To set up my zsh config, simply run the following command
```
cd $HOME/dotfiles
./bash/install/install.sh
```

# Manual Installation
To install my bash profile manually
1. Install [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
2. Add a new entry in `~/.zshrc`
```
echo "source ~/dotfiles/bash/.zsh_profile" >> ~/.zshrc

source ~/.zshrc
# use the node version you would like to install
nvm install ${INTERNAL_NODE_VERSION}
# install yarn
npm install -g yarn
```
3. Add Solarizd Dark Patched Color Preset. The color preset is [here](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/schemes/Solarized%20Dark%20-%20Patched.itermcolors)
```
curl --output Solarized\ Dark\ Patched.itermcolors  https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Solarized%20Dark%20-%20Patched.itermcolors
```
4. Download and install the correct font from [here](https://github.com/powerline/fonts). Link to exact font [here](https://github.com/powerline/fonts/blob/master/Meslo%20Slashed/Meslo%20LG%20L%20Regular%20for%20Powerline.ttf)
```
curl --output Meslo\ LG\ Regular\ for\ Powerline.ttf https://github.com/powerline/fonts/raw/master/Meslo%20Slashed/Meslo%20LG%20L%20Regular%20for%20Powerline.ttf
```

<i>
Note: 
The zsh profile set the key repeat rate which only gets applied after you have logged in and out.
If you want this straight away, after setting up the bash profle, log in and then out
</i>

# Automatic Installation (Bash)
The above command will also install the bash config
```
cd $HOME/dotfiles
./bash/install/install.sh
```
