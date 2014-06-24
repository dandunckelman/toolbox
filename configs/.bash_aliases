# system aliases
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --exclude-dir=.git --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -ahlF'
alias la='ls -A'
alias l='ls -CF'
alias log-out="gnome-session-quit"

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# project directories
alias api='cd ~/work/api/'
alias apim='cd ~/work/api-master/'
alias ar='cd ~/work/archive/'
alias ch='cd ~/work/chef/'
alias cr='cd ~/work/chef-recipes/'
alias con='cd ~/work/conduit/'
alias oc='cd ~/work/console/'
alias cb='cd ~/work/cookbooks/'
alias dash='cd ~/work/dashboard/'
alias dc='cd ~/work/documentor/'
alias em='cd ~/work/emailer/'
alias ember='cd ~/work/ember/rtb_analytics/rails/'
alias eb='cd ~/work/ember-bridge/'
alias ebc='cd ~/work/ember-bridge-cookbook/'
alias ebm='cd ~/work/ember-bridge-migrator/'
alias og='cd ~/work/gems/onescreen/'
alias odg='cd ~/work/gems/onescreen-deployer/'
alias eg='cd ~/work/gems/onescreen-ember/'
alias oeg='cd ~/work/gems/onescreen-external-api/'
alias oig='cd ~/work/gems/onescreen-internal/'
alias ayg='cd ~/work/gems/adaptive-yahoo/'
alias pl='cd ~/work/player/'
alias ogems='cd ~/work/gems/ruby-gems/'
alias jt='cd ~/work/javascript-toolbox/'
alias od='cd ~/work/onescreen-deployer/'
alias pr='cd ~/work/processor/'
alias sb='cd ~/work/sandbox/'
alias sc='cd ~/work/sandbox/scala/'
alias si='cd ~/work/sites/'
alias tb='cd ~/work/toolbox/'

# remaps
alias ifconfig='/sbin/ifconfig'

# hardware
alias mphone='sudo mtpfs -o allow_other /media/nexus4/'
alias umphone='sudo umount /media/nexus4/'

# shortcuts
alias ivp='vim +PluginInstall +qall'
alias dircount='ls -l | grep ^d | wc -l'
alias sbc='source ~/.bashrc'

# deployment shortcuts
alias odsl='od; onescreen-deployer -p sites -e production -a list'
alias odsc='od; onescreen-deployer -p sites -e production -a current'
alias odsu='od; onescreen-deployer -p sites -e production -a update'
alias odal='od; onescreen-deployer -p api -e production -a list'
alias odac='od; onescreen-deployer -p api -e production -a current'
alias odau='od; onescreen-deployer -p api -e production -a update'

# git shortcuts
alias gs='git status'
alias gd='git diff'
alias gp='git pull'
