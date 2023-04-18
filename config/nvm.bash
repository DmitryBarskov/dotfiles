export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"

# Load NVM as usual (slow)
# [ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"

# Load latest node installed via NVM
if [[ -d "$NVM_DIR/versions/node" ]]; then
    latest_node_path=$(find "$NVM_DIR/versions/node" -depth 1 | sort -V | tail -1)
    if [[ -d "$latest_node_path" ]]; then
        export PATH="$latest_node_path/bin:$PATH"
    fi
fi

# Lazy load NVM
load_nvm () {
    if [ -s "$NVM_DIR/nvm.sh" ]; then
        source "$NVM_DIR/nvm.sh"
    fi
    if [[ -n $BASH && -s "$NVM_DIR/bash_completion" ]]; then
        source "$NVM_DIR/bash_completion"
    fi
}
alias nvm='unalias nvm && load_nvm; nvm'
