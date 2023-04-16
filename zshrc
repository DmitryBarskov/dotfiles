# Config dirs
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_DATA_DIRS="/usr/local/share:/usr/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CONFIG_DIRS="/etc/xdg"
uid="$(id -g)"
export XDG_RUNTIME_DIR="/run/user/$uid"

export EDITOR='vim'

[ -f "$XDG_CONFIG_HOME/homebrew.sh" ] && source "$XDG_CONFIG_HOME/homebrew.sh"
[ -f "$XDG_CONFIG_HOME/aliases.sh" ] && source "$XDG_CONFIG_HOME/aliases.sh"
[ -f "$XDG_CONFIG_HOME/macos-aliases.sh" ] && source "$XDG_CONFIG_HOME/macos-aliases.sh"
[ -f "$XDG_CONFIG_HOME/git.zsh" ] && source "$XDG_CONFIG_HOME/git.zsh"
[ -f "$XDG_CONFIG_HOME/node.sh" ] && source "$XDG_CONFIG_HOME/node.sh"
[ -f "$XDG_CONFIG_HOME/java.sh" ] && source "$XDG_CONFIG_HOME/java.sh"
[ -f "$XDG_CONFIG_HOME/ruby.sh" ] && source "$XDG_CONFIG_HOME/ruby.sh"

# Load autocomplete
export FPATH="$XDG_DATA_HOME/zsh/site-functions:/usr/share/zsh/site-functions:/usr/share/zsh/$ZSH_VERSION/functions"
autoload -Uz compinit && compinit

# emacs mappings
bindkey -e

export DOCKER_HIDE_LEGACY_COMMANDS=true
