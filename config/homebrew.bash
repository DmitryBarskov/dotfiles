if [[ $(uname) == "Darwin" ]]; then
    # while read -r varname; do unset "$varname"; done < <(
    #     env | grep '^HOMEBREW_\w\+=' | cut -d "=" -f1
    # )

    # Apple Silicone Homebrew location
    eval "$(/opt/homebrew/bin/brew shellenv)"

    if [ "$TERM_PROGRAM" = "vscode" ]; then
        export HOMEBREW_PREFIX="/opt/homebrew";
        export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
        export HOMEBREW_REPOSITORY="/opt/homebrew";
        fpath[1,0]="/opt/homebrew/share/zsh/site-functions";
        export FPATH;
        eval "$(/usr/bin/env PATH_HELPER_ROOT="/opt/homebrew" /usr/libexec/path_helper -s)"
        [ -z "${MANPATH-}" ] || export MANPATH=":${MANPATH#:}";
        export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";
    fi
fi
