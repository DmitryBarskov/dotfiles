installation_path="${XDG_DATA_HOME:-$HOME}"

if [ -d "$installation_path/.asdf" ]; then
    export ASDF_DIR="$installation_path/.asdf"
    . "$ASDF_DIR/asdf.sh"
    . "$ASDF_DIR/completions/asdf.bash"
    export ASDF_CONFIG_FILE="$XDG_CONFIG_HOME/asdf/.asdfrc"
else
    alias asdf='unalias asdf; echo "Installing asdf..."; git clone https://github.com/asdf-vm/asdf.git "$installation_path/.asdf" --branch v0.11.3; reload'
fi
