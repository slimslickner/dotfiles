# Using Starship (https://starship.rs)

# Enable persistent history
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_SAVE_NO_DUPS
setopt INC_APPEND_HISTORY

# Move to directories without cd
setopt autocd

# Initialize completion
autoload -U compinit; compinit

# The most important aliases ever (the only thing I borrowed from OMZ)
alias l='ls -lah'
alias la='ls -lAh'
alias ll='ls -lh'
alias ls='ls -G'
alias lsa='ls -lah'
alias cd='z'
alias cdi='zi'

# setup a config alias for tracking config level files in ~/
# this is source controlled using the setup below with the git alias `config` which was pulled from https://www.atlassian.com/git/tutorials/dotfiles.
# git init --bare $HOME/.cfg
# alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
# config config --local status.showUntrackedFiles no
# echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.zshrc
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Set up zoxide to move between folders efficiently
eval "$(zoxide init zsh)"

# Activate mise
eval "$(mise activate zsh)"

# Set up the Starship prompt
eval "$(starship init zsh)"
