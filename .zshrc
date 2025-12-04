# Use Go 1.25 from Homebrew
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

# Minimal default zsh config
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/homebrew/bin:/opt/homebrew/sbin"
#export PATH=$PATH:/usr/local/go/bin

# Custom Aliases
alias ll="ls -alF"
alias gs="git status"
alias gp="git pull"
alias gd="git diff"
alias ..="cd .."
alias c="clear"
alias w="cd ~/workspace/work/"
alias l="cd ~/workspace/learning/"
alias p="cd ~/workspace/projects/"
alias s="cd ~/workspace/sandbox/" 
alias vz="vi ~/.zshrc"
alias sz="source ~/.zshrc"
#echo "zshrc sourced !!!!"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/kshetty/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#export PATH=$PATH:/usr/local/go/bin
#export GOPATH=$HOME/go
#export PATH=$PATH:$GOPATH/bin

#export PATH="/opt/homebrew/opt/go@1.23/bin:$PATH"
#export PATH="/opt/homebrew/opt/go@1.23/bin:$PATH"
export PATH="$PATH:$(go env GOPATH)/bin"
export GIT_SSH=ssh
export GIT_SSH_COMMAND="ssh -F ~/.ssh/config"

# alias login='eval $(~/.doormat-auth.sh)'
alias login='doormat login && eval $(doormat aws -a aws_kshitij.shetty_test export)'

