if [[ $(uname) == "Darwin" ]]; then
    # shellcheck disable=SC2139
    alias ctags="$(brew --prefix)/bin/ctags"

    alias mvim='open -a MacVim'
    alias assume="source assume"

    if [[ $(arch) == "arm64" ]]; then
        alias ibrew='arch -x86_64 /usr/local/bin/brew'
        alias i='arch -x86_64'
        alias af='ARCHFLAGS="-arch x86_64"'
        alias afi='ARCHFLAGS="-arch x86_64" arch -x86_64'
    fi
fi
