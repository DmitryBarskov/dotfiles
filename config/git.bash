if [[ $(type -t __git_ps1) != function ]]; then
  __git_ps1 () {
    format="${1:-%s}"
    branch_name="$(git branch --show-current 2>/dev/null)"
    if [[ -n $branch_name ]]; then
      # Disabling the check, because I want to treat data as actual format
      # shellcheck disable=SC2059
      printf "$format" "$branch_name"
      return 0
    else
      return 1
    fi
  }
fi

# prints prompt as "user:current_path (git_branch) $ "
blue="\[\033[34m\]"
gray="\[\033[92m\]"
red="\[\033[31m\]"
white="\[\033[00m\]"
export PS1="$gray\u$white@\h:$blue\w $red\$(__git_ps1 '(%s) ')$white$ "
