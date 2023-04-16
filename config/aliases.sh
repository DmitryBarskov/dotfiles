alias e='eval $EDITOR'
alias g='git'
alias untar='tar -zxvf'

# Common typos
alias gs='git status'
alias gp='git pull'

# Good defaults
alias ls='ls -a'
alias mkdir='mkdir -pv'
alias wget='wget -c'
alias bc='bc -l'
alias sed='sed -E'
alias du='du -shc'

# Some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

if test -t 1 && test -n "$(tput colors)" && test "$(tput colors)" -ge 8; then
  alias ls='ls --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

if [[ $SHELL == *"bash" ]]; then
  alias reload='source ~/.bashrc'
elif [[ $SHELL == *"zsh" ]]; then
  alias reload='source ~/.zshrc'
fi
