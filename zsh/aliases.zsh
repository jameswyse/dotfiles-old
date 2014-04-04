# ------------------------------------------------------------------------------
# Git Aliases
# ------------------------------------------------------------------------------

alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status -sb'
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"

# Replace git with [hub](http://defunkt.github.com/hub/)
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# ------------------------------------------------------------------------------
# General Aliases
# ------------------------------------------------------------------------------

# Copy your public key to the clipboard
alias pubkey="more ~/.ssh/id_dsa.public | pbcopy | echo '=> Public key copied to pasteboard.'"
