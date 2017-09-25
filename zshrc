# Executes commands at the start of an interactive session.
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

alias ll="ls -lh"
alias sl="ls -lh"
alias la="ls -A"
alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../.."
alias cd.....="cd ../../../../"
alias rm="/bin/rm -f"
alias cp="/bin/cp"
alias mv="/bin/mv"
 
# Customize to your needs...
# Shell Commands
alias l='ls -la'
alias h='ls -lh'
alias b='cd -'
alias desk='cd ~/Desktop'
alias se="vim ~/.zshrc"
alias ss="source ~/.zshrc"
alias mz="more ~/.zshrc"
alias vv="vim ~/.vimrc"
alias vz="vim ~/.zshrc"
alias vp="vim patch.diff"
alias vundle="vim +PluginInstall +qall"
# alias vimplug="vim +PlugInstall +qall"
alias sshon="sudo systemsetup -setremotelogin on"
alias sshoff="sudo systemsetup -setremotelogin off"
alias ff="find . -name"
alias kk="rm -rf /root/.ssh/known_hosts"
alias sz="sudo zsh"
alias dl="cd ~/Downloads"
alias cow="chown andy -R ./web"
alias cow22="chown andy -R /opt/fsa/trunk2.2/web"
alias cowtk="chown andy -R /opt/fsa/trunk/web"
alias sysup="sudo apt-get update && sudo apt-get upgrade"

# SVN commands
alias sd="svn diff"
alias sdf="svn diff --summarize"
alias sup="svn update && chown andy -R ./web"
alias ssm="svn st|grep '[MA]'"
alias ssw="svn st web"
alias sswm="svn st web|grep '[MA]'"
alias ssmw="svn st web|grep '[MA]'"
alias sg="svn log --limit 3"
alias sgl="svn log --limit $1"
alias sgr="svn log -v -r $1"
alias sr="svn revert"

#ReviewBoard
alias rd="~/bin/rb_genco.py diff"
alias rp="~/bin/rb_genco.py post"
alias ru="~/bin/rb_genco.py update"

# Fortinet Shortcuts
alias fsa='cd /opt/fsa'
alias cdir='cd /opt/fsa && ./fdev.sh'
alias t='cd /opt/fsa/trunk'
alias tw='cd /opt/fsa/trunk/web'
alias t1='cd /opt/fsa/trunk1'
alias t1w='cd /opt/fsa/trunk1/web'
alias t2='cd /opt/fsa/trunk2'
alias t2w='cd /opt/fsa/trunk2/web'
alias t3='cd /opt/fsa/trunk3'
alias t3w='cd /opt/fsa/trunk3/web'
alias t4='cd /opt/fsa/trunk4'
alias t4w='cd /opt/fsa/trunk4/web'
alias trunk='cd /opt/fsa/trunk'
alias trunkw='cd /opt/fsa/trunkw'
alias sandbox='cd /opt/fsa/trunk/web/sandbox'
alias fsadb='cd /opt/fsa/drive0/private/db-install'
alias guidb='sqlite3 /opt/fsa/ramdisk/FortiSandboxGUI.db'
alias storage='cd /opt/fsa/Storage'
alias rmst='/bin/rm -fr /opt/fsa/Storage/* /opt/fsa/ramdisk/*.db /opt/fsa/drive0/private/statistics/* /opt/fsa/drive0/private/db-install/'
alias pvt='cd /opt/fsa/drive0/private'
# alias s39='ssh admin@172.18.39.$1'
# alias s69='ssh admin@172.16.69.$1'
s39(){
  a='/usr/bin/ssh admin@172.18.39.'
  b=$a$2
  $b
}
alias ssh12="ssh admin@172.16.69.12"
alias ssh13="ssh admin@172.16.69.13"
alias ssh15="ssh admin@172.16.69.15"
alias ssh17="ssh admin@172.16.69.17"
alias ssh31="ssh admin@172.16.69.31"
alias ssh12="ssh admin@172.16.69.12"
alias ssh13="ssh admin@172.16.69.13"
alias ssh15="ssh admin@172.16.69.15"
alias ssh17="ssh admin@172.16.69.17"
alias ssh31="ssh admin@172.16.69.31"
alias ssh32="ssh admin@172.16.69.32"
alias ssh33="ssh admin@172.16.69.33"
alias ssh34="ssh admin@172.16.69.34"
alias ssh35="ssh admin@172.16.69.35"
alias ssh36="ssh admin@172.16.69.36"
alias ssh37="ssh admin@172.16.69.37"
alias ssh38="ssh admin@172.16.69.38"
alias ssh39="ssh admin@172.16.69.39"
alias ssh96="ssh admin@172.16.69.96"
alias ssh113="ssh admin@172.16.69.113"
alias ssh128="ssh admin@172.16.69.128"
alias ssh140="ssh admin@172.16.69.140"
alias ssh142="ssh admin@172.16.69.142"
alias ssh143="ssh admin@172.16.69.143"
alias ssh145="ssh admin@172.16.69.145"
alias ssh146="ssh admin@172.16.69.146"
alias ssh147="ssh admin@172.16.69.147"
alias ssh148="ssh admin@172.16.69.148"
alias ssh149="ssh admin@172.16.69.149"
alias ssh153="ssh admin@172.16.69.153"
alias ssh154="ssh admin@172.16.69.154"
alias ssh155="ssh admin@172.16.69.155"
alias ssh157="ssh admin@172.16.69.157"
alias ssh158="ssh admin@172.16.69.158"
alias ssh162="ssh admin@172.16.69.162"
alias ssh196="ssh admin@172.16.69.196"
alias ssh201="ssh admin@172.16.69.201"
alias ssh202="ssh admin@172.16.69.202"
alias ssh203="ssh admin@172.16.69.203"
alias ssh204="ssh admin@172.16.69.204"
alias ssh205="ssh admin@172.16.69.205"
alias ssh206="ssh admin@172.16.69.206"
alias ssh207="ssh admin@172.16.69.207"
alias ssh208="ssh admin@172.16.69.208"
alias ssh209="ssh admin@172.16.69.209"
alias ssh210="ssh admin@172.16.69.210"
alias ssh211="ssh admin@172.16.69.211"
alias ssh212="ssh admin@172.16.69.212"
alias ssh213="ssh admin@172.16.69.213"
alias ssh215="ssh admin@172.16.69.215"
alias ssh217="ssh admin@172.16.69.217"
alias ssh97="ssh admin@172.17.94.97"
alias tel97="telnet 172.17.93.191 2043"
alias ssh90="ssh admin@172.16.92.90"
alias ssh89="ssh admin@172.16.92.89"

# for android sdk
JAVA_HOME="/usr/lib/jvm/java-8-oracle"
export JAVA_HOME
# now I have removed Android Sdk, so comment below. Andy Yuan@Jan 4, 2017
# export ANDROID_HOME=$HOME/Android/Sdk
# export PATH=$PATH:$ANDROID_HOME/tools:/usr/bin
NODE_PATH="/usr/local/lib/node_modules"
export NODE_PATH

alias jhome="update-alternatives --config java"
unsetopt share_history

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
