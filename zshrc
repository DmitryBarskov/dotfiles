# zmodload zsh/zprof # uncomment for profiling

# Loaded for interactive shells.
# Also check out zshenv

export XDG_CONFIG_HOME="$HOME/.config"
source "$XDG_CONFIG_HOME/aliases.bash"
source "$XDG_CONFIG_HOME/fzf.bash"
source "$XDG_CONFIG_HOME/git.zsh"
source "$XDG_CONFIG_HOME/homebrew.sh"

# Load autocomplete
export FPATH="$XDG_DATA_HOME/zsh/site-functions:/usr/share/zsh/site-functions:/usr/share/zsh/$ZSH_VERSION/functions"
autoload -Uz compinit && compinit
bindkey '\t' complete-word

# emacs mappings
bindkey -e

eval "$(mise activate zsh)"

# zprof # uncomment for profiling
