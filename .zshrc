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

# The most important aliases ever (the only thing I borrowed from OMZ)
alias l='ls -lah'
alias la='ls -lAh'
alias ll='ls -lh'
alias ls='ls -G'
alias lsa='ls -lah'
alias cd='z'
alias cdi='zi'
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

eval "$(_BEANSCHEDULE_COMPLETE=zsh_source beanschedule)"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Set up fzf-tab
source ~/.zsh_config/plugins/fzf-tab/fzf-tab.plugin.zsh

# Set up venv-activation
# source ~/.zsh_config/plugins/venv-activation/venv-activation.plugin.zsh

# Set up beancount-helpers
source ~/.zsh_config/plugins/beancount-helpers/beancount-helpers.plugin.zsh

# Activate mise
eval "$(mise activate zsh)"

# Set up the Starship prompt
eval "$(starship init zsh)"
export PATH="$HOME/.local/bin:$PATH"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/timtickner/.lmstudio/bin"
# End of LM Studio CLI section


# Set up zoxide to move between folders efficiently
eval "$(zoxide init zsh)"
