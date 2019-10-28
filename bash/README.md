# Automatic Installation
To set up my bash config, simply run the following command
```
cd $HOME/dotfiles
./bash/install/install.sh
```

# Manual Installation
To install my bash profile manually, add a new entry in `~/.bash_profile` or `~/.bashrc`
```
echo "source ~/dotfiles/.bash_profile" >> ~/.bash_profile
```

Note: 
The bash profile set the key repeat rate which only gets applied after you have logged in and out.
If you want this straight away, after setting up the bash profle, log in and then out
