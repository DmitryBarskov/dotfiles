# zmodload zsh/zprof # uncomment for profiling

export XDG_CONFIG_HOME="$HOME/.config"

# load homebrew first
source "$XDG_CONFIG_HOME/homebrew.bash"

source "$XDG_CONFIG_HOME/aliases.bash"
source "$XDG_CONFIG_HOME/asdf.sh"
source "$XDG_CONFIG_HOME/git.zsh"
source "$XDG_CONFIG_HOME/java.bash"
source "$XDG_CONFIG_HOME/nvm.bash"
source "$XDG_CONFIG_HOME/ruby.bash"
source "$XDG_CONFIG_HOME/fzf.bash"

# Load autocomplete
export FPATH="$XDG_DATA_HOME/zsh/site-functions:/usr/share/zsh/site-functions:/usr/share/zsh/$ZSH_VERSION/functions"
autoload -Uz compinit && compinit
bindkey '\t' complete-word

# emacs mappings
bindkey -e

# zprof # uncomment for profiling
