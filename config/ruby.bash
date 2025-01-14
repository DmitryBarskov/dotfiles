# Load ruby
if command -v rbenv &> /dev/null; then
  eval "$(rbenv init -)"
fi

export IRBRC="$XDG_CONFIG_HOME/.irbrc"
