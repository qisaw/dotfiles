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
