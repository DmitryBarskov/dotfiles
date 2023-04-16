autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%F{red}%b%f '
# Add git branch to prompt
export PROMPT='%F{blue}%~%f $vcs_info_msg_0_%(?.$.%F{red}$%f) '
