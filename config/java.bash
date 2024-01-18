if command -v jenv &> /dev/null
then
  export PATH="$HOME/.jenv/bin:$PATH"
  eval "$(jenv init -)"
fi

export PATH="$HOME/Library/Application Support/Coursier/bin:$PATH"
