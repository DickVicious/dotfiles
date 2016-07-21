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

## More detailed ls
alias ls='k -h'
alias lsa='k -ah'

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
