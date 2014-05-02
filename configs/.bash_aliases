# project directories
alias api='cd ~/work/api/'
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
alias install-vi-plugins='vim +PluginInstall +qall'
alias ssh-jenkins='ssh-add ~/.ssh/os-m.pem; ssh ubuntu@ec2-107-22-46-156.compute-1.amazonaws.com'

# deployment shortcuts
alias odsl='od; onescreen-deployer -p sites -e production -a list'
alias odsc='od; onescreen-deployer -p sites -e production -a current'
alias odsu='od; onescreen-deployer -p sites -e production -a update'
alias odal='od; onescreen-deployer -p api -e production -a list'
alias odac='od; onescreen-deployer -p api -e production -a current'
alias odau='od; onescreen-deployer -p api -e production -a update'
