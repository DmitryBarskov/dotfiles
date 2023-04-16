export NVM_DIR="$HOME/.nvm"

# Load NVM as usual (slow)
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Load latest node installed via NVM
if [[ -d "$NVM_DIR/versions/node" ]]; then
    latest_node_path=$(find "$NVM_DIR/versions/node" -depth 1 | sort -V | tail -1)
    if [[ -d "$latest_node_path" ]]; then
        export PATH="$latest_node_path/bin:$PATH"
    fi
fi

# Lazy load NVM
alias nvm='unalias nvm && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"; nvm'
