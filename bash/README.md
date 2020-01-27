# Automatic Installation (Zsh)
To set up my zsh config, simply run the following command
```
cd $HOME/dotfiles
./bash/install/install.sh
```

# Manual Installation
To install my bash profile manually, add a new entry in `~/.bash_profile` or `~/.bashrc`
```
echo "source ~/dotfiles/bash/.zsh_profile" >> ~/.zshrc

source ~/.bash_profile
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

# Manual Installation
To install my bash profile manually, add a new entry in `~/.bash_profile` or `~/.bashrc`
```
echo "source ~/dotfiles/bash/.bash_profile" >> ~/.bash_profile
```
