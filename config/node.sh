export NVM_DIR="$HOME/.nvm"

# Load NVM as usual (slow)
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Load latest node installed via NVM
if [[ -d "$NVM_DIR/versions/node" ]]; then
    latest_node_version=$(ls -t "$NVM_DIR/versions/node" | head -1)
    node_path="$NVM_DIR/versions/node/$latest_node_version"
    if [[ -n "$latest_node_version" && -d "$node_path" ]]; then
        export PATH="$node_path/bin:$PATH"
    fi
fi

# Lazy load NVM
alias nvm='unalias nvm && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"; nvm'
