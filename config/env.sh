if [ "$(uname)" = "Darwin" ]; then
  # disable MacOS bash deprecation
  export BASH_SILENCE_DEPRECATION_WARNING=1
fi

# Config dirs
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"

export PATH="$HOME/.local/bin:$PATH"

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTFILE="$XDG_STATE_HOME/history"
export HISTSIZE=1000
export HISTFILESIZE=2000
export SAVEHIST=1000

export DOCKER_HIDE_LEGACY_COMMANDS=true

export EDITOR=vim
export CTAGS="--options=$XDG_CONFIG_HOME/ctags/config.ctags"
