#!/bin/sh

set -o nounset    # error when referencing undefined variable
set -o errexit    # exit when command fails

# Install extensions
mkdir -p ${HOME}/.config/coc/extensions
cd ${HOME}/.config/coc/extensions
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
  coc-tslint-plugin \
  coc-sql \
  coc-go \
  coc-swagger
