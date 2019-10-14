export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME="${HOME}/Library/Android/sdk"
export PATH="${PATH}:$JAVA_HOME/bin"
export PATH="$HOME/.fastlane/bin:$PATH"
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export ENVIRONMENT=dev
export REACT_EDITOR=nvim
export EDITOR=nvim

# GIT COMMANDS/ALIASES
# Set the default git editor to vim instead of vi
export GIT_EDITOR=nvim

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
alias adbtcp="adb reverse tcp:9090 tcp:9090"
alias bastionprod="ssh -A ubuntu@35.164.1.250"
alias bastioncat="ssh -A ubuntu@52.11.215.109"

function parse_git_branch {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/' -e "s/ //"
}

function gcm {
  git commit -m "\"$(parse_git_branch) "$*"\""
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

alias ave='aws-vault exec'
alias avec='aws-vault exec capps-cat-admin --'
alias avep='aws-vault exec capps-prod-admin --'
alias tp='terraform plan -out=plan.out'
alias ta='terraform apply plan.out'
alias dc='docker-compose'
alias d='docker'
alias de='docker exec -it'

#LOAD NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/wasiqkashkari/google-cloud-sdk/path.bash.inc' ]; then . '/Users/wasiqkashkari/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/wasiqkashkari/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/wasiqkashkari/google-cloud-sdk/completion.bash.inc'; fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# git
git config --global user.name "Wasiq Kashkari"
git config --global user.email "w.kashkari@outlook.com"
git config --global core.excludesfile ~/dotfiles/bash/.gitignore

# key repeat rate
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

# kubectl
alias ks='kubectl -n staging'
alias kp='kubectl -n production'
#ksh_func() { kn exec -it $1 -- sh }
#alias ksh=ksh_func
#kport_func() { kn port-forward $1 $2:$3 } # pod localPort remotePort
#alias kport=kport_func

# helm 
#helm_func() { helm $1 --tls $2 $3 $4 $5 }
#alias h=helm_func
alias hh='helm history --tls'
alias hhj='helm history --tls -o yaml'
alias h-sealed='helm sealed-secrets enc-dir secret-templates kubernetes-resources'

export HELM_HOME=~/.helm

# brew-file
if [ -f $(brew --prefix)/etc/brew-wrap ];then
  source $(brew --prefix)/etc/brew-wrap
fi
