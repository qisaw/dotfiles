# My Dotfiles

This repository contains all my dot files for setting up my environment

| Technology | Setup instructions |
| ---------- | -------------------|
| [Vim](https://www.vim.org/) | To set up vim, see the instructions [here](./.vim/README.md) |
| [Bash](https://www.gnu.org/software/bash/) | To set up my bash config, see instructions [here](./bash/README.md) |
| [Homebrew](https://brew.sh/) | To set up my homebrew packages, see instructions [here](#Homebrew) |


# Homebrew
To set up all the packages in [homebrew](https://brew.sh/), I use [brew-file](https://homebrew-file.readthedocs.io/en/latest/installation.html)

## Requirements
You must have [homebrew](https://brew.sh/) installed on a Mac
To install homebrew simply run the following command

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
## Installation
To install homebrew, run the following commands
Note: These commands are taken from the following [link](https://homebrew-file.readthedocs.io/en/latest/getting_started.html#use-github-or-any-git-repository-for-brewfile-management)

1) first install homebrew-file
    ```
    brew install rcmdnk/file/brew-file
    ```
1) source the bash_profile
    ```
    source ~/dotfiles/bash/.bash_profile
    ```
1) set the brewfile repository to `qisaw/dotfiles`
    ```
    brew set_repo
    ```
1) install packages in brewfile
    ```
    brew file install
    ```
