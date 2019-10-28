# My Dotfiles

This repository contains all my dot files for setting up my environment

| Order | Technology | Setup instructions |
| :---: | ---------- | -------------------|
| 1 | [Homebrew](https://brew.sh/) | To set up my homebrew packages, see instructions [here](./homebrew/README.md) |
| 2 | [Bash](https://www.gnu.org/software/bash/) | To set up my bash config, see instructions [here](./bash/README.md) |
| 3 | [Vim](https://www.vim.org/) | To set up vim, see the instructions [here](./.vim/README.md) |

# Automatic Installation (Beta)
To install all the above simply run the following command

~~~
./install/install.sh
~~~

**Note: This will install both `node` and `yarn` as they are requirements for a lot of the above.
You can choose which node version to use by changing the following environment variable.
Currently this defaults to 10.**


~~~
NODE_VERSION_TO_INSTALL=10
~~~
