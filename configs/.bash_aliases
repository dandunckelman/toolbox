# system aliases
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --exclude-dir=.git --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias l='ls -ahlF'
alias log-out="gnome-session-quit"

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

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

# git shortcuts
alias ga='git add'
alias gc='git commit'
alias gco='git checkout'
alias gd='git diff'
alias gl='git log'
alias gm='git merge'
alias gp='git pull'
alias gpo='git pull origin'
alias gpu='git push'
alias gpuo='git push origin'
alias gr='git rebase'
alias gs='git status'
alias gst='git stash'

# vagrant shortcuts
alias vh='vagrant halt'
alias vp='vagrant provision'
alias vsh='vagrant ssh'
alias vs='vagrant status'
alias vu='vagrant up'
