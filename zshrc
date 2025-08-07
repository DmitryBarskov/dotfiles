# zmodload zsh/zprof # uncomment for profiling

# Loaded for login shells
# Note that .zprofile is loaded before this

source "$XDG_CONFIG_HOME/aliases.bash"
source "$XDG_CONFIG_HOME/asdf.sh"
source "$XDG_CONFIG_HOME/fzf.bash"
source "$XDG_CONFIG_HOME/git.zsh"

# Load autocomplete
export FPATH="$XDG_DATA_HOME/zsh/site-functions:/usr/share/zsh/site-functions:/usr/share/zsh/$ZSH_VERSION/functions"
autoload -Uz compinit && compinit
bindkey '\t' complete-word

export EDITOR=vim
export CTAGS="--options=$XDG_CONFIG_HOME/ctags/config.ctags"

# emacs mappings
bindkey -e

# zprof # uncomment for profiling
