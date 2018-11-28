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
alias ssh="/usr/bin/ssh"

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
alias co="chown andy -R ."
alias cow="chown andy -R ./web"
alias cow22="chown andy -R /opt/fsa/trunk2.2/web"
alias cowtk="chown andy -R /opt/fsa/trunk/web"
alias sysup="sudo apt-get update && sudo apt-get upgrade && sudo apt autoremove"
alias tint2="/usr/bin/tint2 -c /home/andy/.config/tint2/tint2rc&"
alias tint="/usr/bin/tint2 -c /home/andy/.config/tint2/tint2rc&"
alias sql="sqlite3"
alias sqlite="sqlite3"

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
alias trap='cd /opt/fsa/trap'
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
alias br3='cd /opt/fsa/br3'
alias br3w='cd /opt/fsa/br3/web'
alias sandbox='cd /opt/fsa/trunk/web/sandbox'
alias fsadb='cd /opt/fsa/drive0/private/db-install'
alias guidb='sqlite3 /opt/fsa/ramdisk/FortiSandboxGUI.db'
alias webdb='sqlite3 /opt/fsa/etc/FortiSandboxGUIBackend.db'
alias rptdb='sqlite3 /opt/fsa/drive0/private/db/reports.db'
alias storage='cd /opt/fsa/Storage'
alias rmall='/bin/rm -fr /opt/fsa/Storage/* /opt/fsa/ramdisk/*.db  /opt/fsa/drive0/private/statistics/*'
alias rmst='/bin/rm -fr /opt/fsa/Storage/* /opt/fsa/ramdisk/*.db'
alias pvt='cd /opt/fsa/drive0/private'

s39(){
  # eval '/usr/bin/ssh admin@172.18.39.$1'
  if [ -z "$2" ]
  then
     eval 'fsash.sh 172.18.39.$1'
  else
      eval 'fsash.sh 172.18.39.$1 $2'
  fi
}
s69(){
  # eval '/usr/bin/s69 $1'
  if [ -z "$2" ]
  then
     eval 'fsash.sh 172.16.69.$1 123admin'
  elif [ $2 -eq "0" ]
  then
    echo nopassword
    eval 'fsash.sh 172.16.69.$1'
  else
      eval 'fsash.sh 172.16.69.$1 $2'
  fi
}
alias ssh97="fsash.sh 172.17.94.97"
alias tel97="telnet 172.17.93.191 2043"
alias ssh90="fsash.sh 172.16.92.90 g00dPwd15"
alias ssh89="ssh admin@172.16.92.89"

# for android sdk
# JAVA_HOME="/usr/lib/jvm/java-8-oracle"

JAVA_HOME8="/opt/jdk1.8.0_144/"
JAVA_HOME7="/opt/jdk1.7.0_79/"
JAVA_HOME=$JAVA_HOME7
export JAVA_HOME
JAVA_HOME_BIN=$JAVA_HOME'/bin'
export PATH=$PATH:$JAVA_HOME_BIN:/opt/apache-maven-3.5.0/bin
# To run eclipse with GTK2:https://www.eclipse.org/forums/index.php/t/1081230/
export SWT_GTK3=0

# now I have removed Android Sdk, so comment below. Andy Yuan@Jan 4, 2017
# export ANDROID_HOME=$HOME/Android/Sdk
# export PATH=$PATH:$ANDROID_HOME/tools:/usr/bin
NODE_PATH="/usr/local/lib/node_modules"
export NODE_PATH
export PATH=/home/andy/bin:$PATH

alias jhome="update-alternatives --config java"
unsetopt share_history

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
