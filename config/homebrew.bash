if [[ $(uname) == "Darwin" ]]; then
    if [[ $(arch) == "arm64" ]]; then
        # Apple Silicone Homebrew location
        brew_location=/opt/homebrew/bin
    else
        # Intel Homebrew location
        brew_location=/usr/local/bin
    fi

    eval "$($brew_location/brew shellenv)"
fi
