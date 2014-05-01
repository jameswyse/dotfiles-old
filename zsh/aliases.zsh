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
# Navigation
# ------------------------------------------------------------------------------

alias ..="cd .."
alias ...="cd .. ; cd .."
alias lsa="ls -a"
alias la="ls -Ga"
alias ll="ls -Gl"
alias lla="ls -Gla"

# ------------------------------------------------------------------------------
# Sound
# ------------------------------------------------------------------------------

alias mute="osascript -e 'set volume output muted true'"
alias blast="sudo osascript -e 'set volume 10'"

# ------------------------------------------------------------------------------
# Networking
# ------------------------------------------------------------------------------

# Get a readable list of network IPs
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# Get your public IP
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"

# Flush the DNS cache
alias flushdns="dscacheutil -flushcache"

# ping 5 times by default
alias ping="ping -c 5"

# ------------------------------------------------------------------------------
# General
# ------------------------------------------------------------------------------

# Copy your public key to the clipboard
alias pubkey="more ~/.ssh/id_rsa.public | pbcopy | echo '=> Public key copied to pasteboard.'"

# set strongest compression level for gzip
alias gzip="gzip -9n"
