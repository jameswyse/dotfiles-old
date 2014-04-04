# ------------------------------------------------------------------------------
# Load External Files
# ------------------------------------------------------------------------------

# Load Antigen
source $DOTFILES/zsh/antigen.zsh

# Set Paths
source $DOTFILES/zsh/path.zsh

# Load Aliases
source $DOTFILES/zsh/aliases.zsh

# Load functions
autoload -U $DOTFILES/zsh/functions/*(:t)

# Load super secret stuff from ~/.localrc
[[ -a ~/.localrc ]] && source ~/.localrc


# ------------------------------------------------------------------------------
# Set Default Settings
# ------------------------------------------------------------------------------
-set-default () {
    local arg_name="$1"
    local arg_value="$2"
    eval "test -z \"\$$arg_name\" && export $arg_name='$arg_value'"
}

-set-default DOTFILES $HOME/.dotfiles
-set-default PROJECTS $HOME/Projects

# ------------------------------------------------------------------------------
# Load Plugins
# ------------------------------------------------------------------------------

# Use oh-my-zsh core
antigen use oh-my-zsh

# Load various plugins from oh-my-zsh
# https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins
antigen bundle git
antigen bundle heroku
antigen bundle atom
antigen bundle sublime
antigen bundle autojump
antigen bundle npm
antigen bundle nvm
antigen bundle redis-cli
antigen bundle jsontools
antigen bundle bower
antigen bundle vagrant
antigen bundle pip
antigen bundle docker
antigen bundle golang

# Load syntax highlighting plugin
antigen bundle zsh-users/zsh-syntax-highlighting

# Load Pure Prompt
# https://github.com/sindresorhus/pure
antigen bundle sindresorhus/pure

# Apply changes
antigen apply
