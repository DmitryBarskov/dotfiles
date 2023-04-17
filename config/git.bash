if [[ $(type -t __git_ps1) != function ]]; then
    __git_ps1 () {
        format="${1:-%s}"
        branch_name="$(git branch --show-current 2>/dev/null)"
        if [[ -n $branch_name ]]; then
            printf "$format" "$branch_name"
            return 0
        else
            return 1
        fi
    }
fi

gray="\[\033[92m\]"
color_reset="\[\033[00m\]"
blue="\[\033[34m\]"
red="\[\033[31m\]"
export PS1="$gray\u$color_reset:$blue\w $red\$(__git_ps1 '(%s) ')$color_reset$ "
