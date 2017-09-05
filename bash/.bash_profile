export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME="${HOME}/Library/Android/sdk"
export PATH="$HOME/.fastlane/bin:$PATH"
export ENVIRONMENT=dev
export REACT_EDITOR=mvim
export EDITOR=mvim

# GIT COMMANDS/ALIASES
# Set the default git editor to vim instead of vi
export GIT_EDITOR=vim

alias g="git"
alias gc="git commit"
alias gs="git status"
alias gd="git diff"
alias gl="git log"
alias gan="git add"
alias ga="git add -p"
alias gch="git checkout"
alias ghcb="git checkout -b"
alias gb="git branch"
alias gr="git reset"
alias gp="git push --follow-tags"
alias gt="git tag"
alias gpl="git pull"

function parse_git_branch {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/' -e "s/ //"
}

function gcm {
  git commit -m "$(parse_git_branch) $@"
}

# Show git branch on command line
export PS1="\u@\h \W\[\033[32m\] (\$(parse_git_branch))\[\033[00m\] $ "

# NPM ALIASES
alias nrs="npm run start"
alias nrt="npm run test"
alias nrc="npm run compile"
alias capps="cd ~/dev/capps"
alias platform="cd ~/dev/capps/capps-platform"
alias platform.f="cd ~/dev/capps/capps-platform/frontend"
alias platform.b="cd ~/dev/capps/capps-platform/backend"

#TMUX ALIASES
alias tm.ks='tmux kill-session'
alias tm="tmux"

#KUBERNETES ALIASES
alias kc=kubectl
alias kca='kubectl apply -f'
alias kcr='kubectl replace -f'
alias kcg='kubectl get configmap'
alias kcc='kubectl create -f'
alias kcgp='kubectl get po'
alias kcdp='kubectl describe po'

#LOAD NVM
export NVM_DIR="/Users/wasiqkashkari/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

