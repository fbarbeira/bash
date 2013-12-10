# Establecemos el PATH para que pille con prioridad los programas instalados
# mediante brew.
PATH="/usr/local/bin:${PATH}"

# Brew completions.
if [ -f `brew --prefix`/etc/bash_completion ]; then
      . `brew --prefix`/etc/bash_completion
fi

if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

if [ -f `brew --prefix`/etc/bash_completion.d/git-flow-completion.bash ]; then
    . `brew --prefix`/etc/bash_completion.d/git-flow-completion.bash
fi

# Diferentes tipos de prompts.
export PS1='\[\033[00;32m\]\u\[\033[01m\]@\[\033[00;36m\]\h\[\033[01m\]:\[\033[00;35m\]\w\[\033[00m\]\[\033[01;30m\]$(__git_ps1 "(%s)")\[\033[00m\]\$ '
#export PS1="\\[$(tput setaf 7)\\]\\w\[\033[00m\]\$(parse_git_branch)> \\[$(tput sgr0)\\]"
#export PS1="\[\033[38m\]\u@\h\[\033[01;34m\] \w \[\033[31m\]\`ruby -e \"print (%x{git branch 2> /dev/null}.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`\[\033[37m\]$\[\033[00m\] "
#export PS1='\[\033[00;32m\]\u\[\033[01m\]@\[\033[00;36m\]\h\[\033[01m\]:\[\033[00;35m\]\w\[\033[00m\]\[\033[01;30m\](`git branch 2>/dev/null|tr -d \*\ `)\[\033[00m\]\$ '
#export PS1='\[\033[00;32m\]\u\[\033[01m\]@\[\033[00;36m\]\h\[\033[01m\]:\[\033[00;35m\]\w\[\033[00m\]\[\033[01;30m\]$(parse_git_branch)\[\033[00m\]\$ '
#export PS1='\[\033[00;32m\]\u\[\033[01m\]@\[\033[00;36m\]\h\[\033[01m\]:\[\033[00;35m\]\w\[\033[00m\]\[\033[01;30m\]$(__git_ps1 "(%s)")\[\033[00m\]\$ '

# Aliases.
alias l='ls -lhG'
alias grep='grep --color=auto'
alias rgrep='grep -r'
alias d='cd ..'
alias tf='tail -f -n 34'
alias va='vagrant'

# Shell colors.
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
