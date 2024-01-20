set -e

installation_path="${XDG_DATA_HOME}"

if [ -d "$installation_path/asdf" ]; then
  export ASDF_DIR="$installation_path/asdf"
  export ASDF_DATA_DIR="$installation_path/asdf"
  export ASDF_CONFIG_FILE="$XDG_CONFIG_HOME/asdf/.asdfrc"
  source "$installation_path/asdf/asdf.sh"
  if [[ "$SHELL" == *"bash" ]]; then
    source "$installation_path/asdf/completions/asdf.bash"
  fi
else
  # Disabling the check, because I want this value to be defined during
  # shell initialization, not calling the alias.
  # shellcheck disable=SC2139
  alias asdf="
    unalias asdf;
    echo 'Installing asdf...';
    git clone https://github.com/asdf-vm/asdf.git '$installation_path/asdf' --branch v0.11.3;
    reload;
  "
fi
