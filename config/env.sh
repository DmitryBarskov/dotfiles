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
export LESSHISTFILE="$XDG_STATE_HOME/lesshst"
export PGHISTFILE="$XDG_STATE_HOME/psql_history"
export NODE_REPL_HISTORY="$XDG_STATE_HOME/node_repl_history"
export PYTHONHISTFILE="$XDG_STATE_HOME/python_history"
export RUBY_DEBUG_HISTORY_FILE="$XDG_STATE_HOME/rdbg_history"

export DOCKER_HIDE_LEGACY_COMMANDS=true

export EDITOR=vim
export CTAGS="--options=$XDG_CONFIG_HOME/ctags/config.ctags"
