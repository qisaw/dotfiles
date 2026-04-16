# Pre-requisites
1. You must have installed [homebrew](https://brew.sh/)
2. You must have used brew-file to install the packages in my brewfile repository [here](https://github.com/qisaw/brewfile)
3. It helps to have the [JetBrains Mono Nerd Font](https://www.nerdfonts.com/font-downloads) installed. You will already have it if you used the brewfile

# Manual Installation
To install my zsh profile manually
1. Install [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
2. Add a new entry in `~/.zshrc`
```
echo "source ~/dotfiles/.zsh_profile" >> ~/.zshrc
source ~/.zshrc
<OTHER_SECRETS, e.g. export OPENAI_KEY=sk-xxxxxx>"
```

<i>
Note: 
The zsh profile set the key repeat rate which only gets applied after you have logged in and out.
If you want this straight away, after setting up the bash profle, log in and then out
</i>
