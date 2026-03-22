# Using Starship (https://starship.rs)

# Enable persistent history
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_SAVE_NO_DUPS
setopt INC_APPEND_HISTORY

# Enable source highlighting in less with `source-highlight`
export LESS='-R'

# Move to directories without cd
setopt autocd

# Initialize completion
autoload -U compinit; compinit

# Aliases 
alias l='ls -lah'
alias la='ls -lAh'
alias ll='ls -lh'
alias ls='ls -G'
alias lsa='ls -lah'
alias - -="cd -"
alias cd='z'
alias cdi='zi'
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias vim='nvim'
alias v='nvim'

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Set up fzf-tab
source ~/.zsh_config/plugins/fzf-tab/fzf-tab.plugin.zsh

# Activate mise
eval "$(mise activate zsh)"

# Set up the Starship prompt
eval "$(starship init zsh)"
export PATH="$HOME/.local/bin:$PATH"

# Set up zoxide to move between folders efficiently
eval "$(zoxide init zsh)"
