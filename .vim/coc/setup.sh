#!/bin/sh

set -o nounset    # error when referencing undefined variable
set -o errexit    # exit when command fails

# Install latest nodejs
if ! command -v node > /dev/null; then
  curl --fail -L https://install-node.now.sh/latest | sh
  # Or use apt-get
  # sudo apt-get install nodejs
fi

# Install yarn
if ! command -v yarn > /dev/null; then
  curl --fail -L https://yarnpkg.com/install.sh | sh
fi

# Use package feature to install coc.nvim
# If you want to use plugin manager, change DIR to plugin directory used by that manager.
#DIR=~/.local/share/nvim/site/pack/coc/start
# For vim user, the directory is different
# DIR=~/.vim/pack/coc/start
#mkdir -p $DIR
#cd $DIR
#git clone https://github.com/neoclide/coc.nvim.git --depth=1
#cd $DIR/coc.nvim
#./install.sh nightly

# Install extensions
mkdir -p ~/.config/coc/extensions
cd ~/.config/coc/extensions
if [ ! -f package.json ]
then
  echo '{"dependencies":{}}'> package.json
fi
# Change arguments to the extensions you need
yarn add \
  coc-json \
  coc-jest \
  coc-css \
  coc-tsserver \
  coc-yaml \
  coc-prettier \
  coc-eslint \
  coc-docker \
  coc-vimlsp \
  coc-sh \
  coc-highlight \
  coc-tslint-plugin
