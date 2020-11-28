################
##    .zshrc  ##
################

# sets command prompt
PROMPT='---- %W %* -----
%(?.%F{green}√.%B%F{red}X%b) %B%F{69}%n%F{7}@%m%f%b %2~ %F{red}%#%f '

# aliases
alias ls='ls -FG'
alias la='ls -la'
alias ll='ls -lah'
alias sl='ls'
alias lash='ls -lash'

function vnc() {
    open vnc://"$USER"@"$1"
}

# emulates bash's tab completion feature
setopt GLOB_COMPLETE

# enables bash ".." and more
setopt AUTO_CD

# enables zsh history
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history

# adds timestamp and elapsed process time to zsh history
setopt EXTENDED_HISTORY

# limit session history and size of history file
SAVEHIST=5000
HISTSIZE=2000

# share history across multiple zsh sessions
setopt SHARE_HISTORY

# append to history
setopt APPEND_HISTORY

# adds commands as they are typed, not at shell exit
setopt INC_APPEND_HISTORY

# removes blank lines from history
setopt HIST_REDUCE_BLANKS

# enables auto correction for mistyped commands
# USAGE:
# n: execute as typed
# y: accept and execute the suggested correction
# a: abort and do nothing
# e: return to the prompt to continue editing
setopt CORRECT
setopt CORRECT_ALL


#### EOF
