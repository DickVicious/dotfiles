#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
source "$HOME/.antigen/antigen.zsh"

antigen use oh-my-zsh

antigen bundle git
antigen bundle gitfast
antigen bundle ruby
antigen bundle debian
antigen bundle tmux
antigen bundle vundle
antigen bundle vi-mode
antigen bundle rake
antigen bundle rvm
antigen bundle bundler
antigen bundle command-not-found
antigen bundle history
antigen bundle encode64
antigen bundle sudo
antigen bundle zsh-users/zsh-completions src
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle history-substring-search
antigen bundle supercrabtree/k

## Potentially useful plugins
#antigen bundle sprunge  # Quick copy/pasta from pastebin
#antigen bundle rsync  # Simplified rsync commands
#antigen bundle npm  # Aliases for npm (node.js package manager)
#antigen bundle pip  # Autocomplete and a few other things for pip
#antigen bundle kennethreitz/autoenv  # Directory-based shell environments 
#antigen bundle common-aliases # Better to take examples from that to use

antigen-theme blinks #amuse
antigen-apply

## Key bindings for history-substring-search
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# Load RVM into a shell session *as a function*
if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then
  # First try to load from a user install
  source "$HOME/.rvm/scripts/rvm"
elif [[ -s "/usr/local/rvm/scripts/rvm" ]] ; then
  # Then try to load from a root install
  source "/usr/local/rvm/scripts/rvm"
else
  printf "ERROR: An RVM installation was not found.\n"
fi

alias ls='k -h'
alias lsa='k -ah'
