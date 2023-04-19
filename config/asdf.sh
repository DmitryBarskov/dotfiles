installation_path="${XDG_DATA_HOME:-$HOME}"

if [ -d "$installation_path/.asdf" ]; then
  source "$installation_path/.asdf/asdf.sh"
  source "$installation_path/.asdf/completions/asdf.bash"
  export ASDF_DIR="$installation_path/.asdf"
  export ASDF_CONFIG_FILE="$XDG_CONFIG_HOME/asdf/.asdfrc"
else
  alias asdf="
    unalias asdf;
    echo 'Installing asdf...';
    git clone https://github.com/asdf-vm/asdf.git "$installation_path/.asdf" --branch v0.11.3;
    reload;
  "
fi
