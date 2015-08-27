# system aliases
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --exclude-dir=.git --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# project directories
alias tb='cd ~/work/personal/toolbox/'

# remaps
alias ifconfig='/sbin/ifconfig'

# shortcuts
alias ivp='vim +PluginInstall +qall'
alias dircount='ls -l | grep ^d | wc -l'
alias sbc='source ~/.bashrc'
alias v='vi -p'
alias aguu='sudo apt-get update; sudo apt-get -y upgrade'
alias l='ls -ahlF'

# git shortcuts
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gconf='git config'
alias gco='git checkout'
alias gd='git diff'
alias gl='git log'
alias gm='git merge'
alias gmv='git mv'
alias gp='git pull'
alias gpo='git pull origin'
alias gpr='git pull -r origin'
alias gpu='git push'
alias gpuo='git push origin'
alias grb='git rebase'
alias grm='git rm'
alias grs='git reset'
alias grv='git revert'
alias gs='git status'
alias gst='git stash'

# vagrant shortcuts
alias vd='vagrant destroy'
alias vh='vagrant halt'
alias vp='vagrant provision'
alias vsh='vagrant ssh'
alias vs='vagrant status'
alias vu='vagrant up'
