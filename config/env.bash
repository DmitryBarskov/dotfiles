if [[ "$OSTYPE" == "darwin"* ]]; then
    # disable MacOS bash deprecation
    export BASH_SILENCE_DEPRECATION_WARNING=1
fi

# Config dirs
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_DATA_DIRS="/usr/local/share:/usr/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CONFIG_DIRS="/etc/xdg"
# uid="$(id -g)"
# export XDG_RUNTIME_DIR="/run/user/$uid"
export XDG_RUNTIME_DIR="$HOME/.local/bin"
export PATH="$XDG_RUNTIME_DIR:$PATH"

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTFILE="$XDG_STATE_HOME/history"
export HISTSIZE=1000
export HISTFILESIZE=2000

export EDITOR="vim"

export DOCKER_HIDE_LEGACY_COMMANDS=true
