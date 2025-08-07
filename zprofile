# zmodload zsh/zprof # uncomment for profiling

# Loaded for non login shells
#
export XDG_CONFIG_HOME="$HOME/.config"

source "$XDG_CONFIG_HOME/env.bash"
source "$XDG_CONFIG_HOME/homebrew.bash"

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.zsh 2>/dev/null || :

# zprof # uncomment for profiling
