export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME=/usr/local/Cellar/android-sdk/24.4.1/
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
alias glb="gulp --backend=uat.movio.co --mode=engage"
alias mmui="cd ~/work/mm-ui/"
alias glu="gulp unit"
alias glw="gulp unit:watch"
alias glm="gulp --mocked"
alias gp="git push"
alias gpl="git pull"
alias tm.ks='tmux kill-session'

parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "


export NVM_DIR="/Users/wasiqk/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


kc-dev(){
    kubectl config use-context movio-dev
}
kc-prod() {
    kubectl config use-context movio-prod-us
}
alias kc=kubectl
alias kca='kubectl apply -f'
alias kcr='kubectl replace -f'
alias kcg='kubectl get configmap'
alias kcc='kubectl create -f'
alias kcgp='kubectl get po'
alias kcdp='kubectl describe po'
kcpo() {
    if [ -z "$1" ]; then
        kubectl get po
    else
        listing=$(kubectl get po)
        echo $listing | head -n 1
        match=$(echo "$listing" | grep "$1")
        echo $match
        pod=$(echo $match | awk '{print $1}')
        ip=$(kubectl describe pod "$pod" | grep '^Node:' | awk '{print $2}' | sed 's,^.*/,,')
        printf "\nIP:\t${ip}\n"
    fi
}
kc-get-yaml() {
    kubectl get configmap "${1}-config" -o yaml
}
kc-replace-yaml() {
    kubectl replace -f "$1"
}
kc-delete-pod() {
    kubectl delete po "$1"
}
kc-delete-pod-force() {
    kubectl delete rc po "$1"
}
kc-delete-configmap() {
    kubectl delete configmap "$1"
}

#API DOC
PATH="$PATH:/Users/wasiqk/work/apidoc-cli/bin"
