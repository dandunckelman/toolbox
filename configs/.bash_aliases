# system aliases
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --exclude-dir=.git --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias wrk='cd ~/work'

# personal project directories
alias wrkp='cd ~/work/personal'
alias ptb='cd ~/work/personal/toolbox'

# work project directories
alias wrkt='cd ~/work/ta'
alias tas='cd ~/work/ta/scripts'
alias tatab='cd ~/work/ta/ta/backend'
alias tatapo='cd ~/work/ta/ta/portal'
alias tatap='cd ~/work/ta/ta/puppet'
alias tatah='cd ~/work/ta/ta/hiera'
alias tad='cd ~/work/ta/dan.techaccelerator.com'

# remaps
#alias ifconfig='/sbin/ifconfig'

# shortcuts
alias ivp='vim +PluginInstall +qall'
alias dircount='ls -l | grep ^d | wc -l'
alias sbc='source ~/.bashrc'
alias v='vi -p'
alias aguu='sudo apt-get update; sudo apt-get -y upgrade'
alias l='ls -ahlF'
alias xmr='xmonad --replace'

# git shortcuts
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gcl='git clone'
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
alias mtqa='gco qa; gpo qa; gm --no-edit development; gpuo qa'
alias mtp='gco production; gpo production; gm --no-edit qa; gpuo production; gco development'
alias mtpin='gco pin_nodejs_module_for_vcd_cell; gpo pin_nodejs_module_for_vcd_cell; gm --no-edit development; gpuo pin_nodejs_module_for_vcd_cell; gco development'

# vagrant shortcuts
alias vd='vagrant destroy'
alias vh='vagrant halt'
alias vp='vagrant provision'
alias vsh='vagrant ssh'
alias vs='vagrant status'
alias vu='vagrant up'
alias vup='vagrant up --provision'

# development shortcuts
alias rsp='bundle exec rake spec_prep'
alias rss='bundle exec rake spec_standalone'
alias rsa='bundle exec rake rspec:acceptance'

alias oops='sudo !!'
alias ax="chmod a+x"
alias listen='netstat -l | grep "LISTEN "'
alias see-history="history | awk '{print $2}' | sort | uniq -c | sort -nr | head"
alias tgz='tar -zxvf'
alias findorphans='find / -nouser -ls'
alias recently-changed="find . -type f -printf '%TY-%Tm-%Td %TT %p\n' | sort -r | head -5"
alias findbig='find /home -size +1000000b -ls'
alias functions='set | grep "()"'
alias up1='cd ..'
alias up2='cd ../..'
alias up3='cd ../../..'
alias ping-pub='ping google.com'
alias ping-modem='ping 192.168.100.1'
alias ping-router='ping 192.168.1.1'
alias ping-switch='ping 192.168.1.2'

# Default to human readable figures
alias df='df -h'
alias du='du -h'
