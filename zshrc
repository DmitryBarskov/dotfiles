# zmodload zsh/zprof # uncomment for profiling

# Note that .zprofile is loaded before this

source "$XDG_CONFIG_HOME/aliases.bash"
source "$XDG_CONFIG_HOME/asdf.sh"
source "$XDG_CONFIG_HOME/fzf.bash"
source "$XDG_CONFIG_HOME/git.zsh"
export PATH="/Users/papuga/src/flutter/bin:$PATH"

# Load autocomplete
export FPATH="$XDG_DATA_HOME/zsh/site-functions:/usr/share/zsh/site-functions:/usr/share/zsh/$ZSH_VERSION/functions"
autoload -Uz compinit && compinit
bindkey '\t' complete-word

export EDITOR=vim

# emacs mappings
bindkey -e

# zprof # uncomment for profiling
