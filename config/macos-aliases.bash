if [[ $(uname) == "Darwin" ]]; then
  alias mvim='open -a MacVim'
  alias assume="source assume"

  if [[ $(arch) == "arm64" ]]; then
    alias ibrew='arch -x86_64 /usr/local/bin/brew'
  fi
fi
