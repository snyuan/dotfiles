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
alias sshstatus="systemctl status ssh"
alias sshstop="systemctl stop ssh"
alias sshstart="systemctl start ssh"
alias sshrestart="systemctl restart ssh"

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
alias co="sudo chown andy -R ."
alias cow="sudo chown andy -R ./web"
alias sysup="sudo apt-get update && sudo apt-get upgrade && sudo apt autoremove"
alias tint2="/usr/bin/tint2 -c ~/.config/tint2/tint2rc&"
alias tint="/usr/bin/tint2 -c ~/.config/tint2/tint2rc&"
alias sql="sqlite3"
alias sqlite="sqlite3"
alias dot="cd ~/dotfiles"

# FCT
alias vpn='sudo /opt/forticlient/vpn -s scm.van.corp.fortinet.com:443 -uayuan -pYY@ftnt6'
alias emsd='/opt/forticlient/epctrl -d'

# SVN commands
alias sd="svn diff"
alias sdf="svn diff --summarize"
alias sup="svn update"
alias ssm="svn st|grep '[MA]'"
alias ssw="svn st web"
alias sswm="svn st web|grep '[MA]'"
alias ssmw="svn st web|grep '[MA]'"
alias sg="svn log --limit 3"
alias sr="svn revert"

# GIT commands
alias gd="git diff"
alias gds="git diff --compact-summary"
alias gp="git pull"
alias gst="git status -uno"
alias gsm="git status |grep modified"
alias gsw="git status web"
alias gswm="git status web|grep modified"
alias gsmw="gitstatus web|grep modified"
alias gg="git log -5"
alias gc="git checkout"

#ReviewBoard
alias rd="rb_genco_git diff"
alias rp="rb_genco_git post"
alias ru="rb_genco_git update"

# Fortinet Shortcuts
alias gitlab='cd ~/gitlab'
alias vnote='vi ~/Dropbox/ftntwork/FSA_note.txt'
alias cnote='cat ~/Dropbox/ftntwork/FSA_note.txt'
alias mnote='more ~/Dropbox/ftntwork/FSA_note.txt'
alias fsa='cd ~/opt/fsa'
alias fsa2='cd ~/opt/fsapy2'
alias cdir='cd ~/opt/fsa && ./fdev.sh'
alias cdir2='cd ~/opt/fsapy2 && ./fdev.sh'
alias trap='cd ~/opt/fsa/trap'
alias t='cd ~/opt/fsa/root/trunk'
alias tw='cd ~/opt/fsa/root/trunk/web'
alias t1='cd ~/opt/fsa/root/trunk1'
alias t1w='cd ~/opt/fsa/root/trunk1/web'
alias t2='cd ~/opt/fsa/root/trunk2'
alias t2w='cd ~/opt/fsa/root/trunk2/web'
alias t3='cd ~/opt/fsa/root/trunk3'
alias t3w='cd ~/opt/fsa/root/trunk3/web'
alias t4='cd ~/opt/fsa/root/trunk4'
alias t4w='cd ~/opt/fsa/root/trunk4/web'
alias trunk='cd ~/opt/fsa/root/trunk'
alias trunkw='cd ~/opt/fsa/root/trunkw'
alias br3='cd ~/opt/fsa/root/3.x'
alias br3w='cd ~/opt/fsa/root/3.x/web'
alias br31='cd ~/opt/fsa/root/br3_1'
alias br31w='cd ~/opt/fsa/root/br3_1/web'
alias br32='cd ~/opt/fsa/root/br3_2'
alias br32w='cd ~/opt/fsa/root/br3_2/web'
alias br23='cd ~/opt/fsapy2/root/br3.1'
alias br23w='cd ~/opt/fsapy2/root/br3.1/web'
alias sandbox='cd ~/opt/fsa/root/trunk/web/sandbox'
alias fsadb='cd ~/opt/fsa/drive0/private/db-install'
alias ramdisk='cd ~/opt/fsa/ramdisk/'
alias guidb='sqlite3 ~/opt/fsa/ramdisk/FortiSandboxGUI.db'
alias webdb='sqlite3 ~/opt/fsa/etc/FortiSandboxGUIBackend.db'
alias rptdb='sqlite3 ~/opt/fsa/drive0/private/db/reports.db'
alias storage='cd ~/opt/fsa/Storage'
alias rmall='/bin/rm -fr ~/opt/fsa/Storage/* ~/opt/fsa/ramdisk/*.db  ~/opt/fsa/drive0/private/statistics/*'
alias rmst='sudo /bin/rm -fr ~/opt/fsa/Storage/* ~/opt/fsa/ramdisk/*.db'
alias pvt='cd ~/opt/fsa/drive0/private'

alias fsan='cd ~/opt/fsa_hd'
alias cdirn='cd ~/opt/fsa_hd && ./fdev.sh'
alias tn='cd ~/opt/fsa_hd/trunk'
alias twn='cd ~/opt/fsa_hd/trunk/web'

s39(){
  # eval '/usr/bin/ssh admin@172.18.39.$1'
  if [ -z "$2" ]
  then
     eval '~/bin/fsash.sh 172.18.39.$1'
  else
      eval '~/bin/fsash.sh 172.18.39.$1 $2'
  fi
}
s592(){
  # eval '/usr/bin/ssh admin@10.59.2.$1'
  if [ -z "$2" ]
  then
     eval '~/bin/fsash.sh 10.59.2.$1 123admin'
  elif [ $2 -eq "0" ]
  then
    echo nopassword
    eval '~/bin/fsash.sh 10.59.2.$1'
  else
      eval '~/bin/fsash.sh 10.59.2.$1 $2'
  fi
}
s594(){
  if [ -z "$2" ]
  then
     eval '~/bin/fsash.sh 10.59.4.$1 123admin'
  elif [ $2 -eq "0" ]
  then
    echo nopassword
    eval '~/bin/fsash.sh 10.59.4.$1'
  else
      eval '~/bin/fsash.sh 10.59.4.$1 $2'
  fi
}
s5926(){
  # eval '/usr/bin/s5926 $1'
  if [ -z "$2" ]
  then
     eval '~/bin/fsash.sh 10.59.26.$1 123admin'
  elif [ $2 -eq "0" ]
  then
    echo nopassword
    eval '~/bin/fsash.sh 10.59.26.$1'
  else
      eval '~/bin/fsash.sh 10.59.26.$1 $2'
  fi
}
alias ssh97="~/bin/fsash.sh 172.17.94.97"
s92(){
  # eval '/usr/bin/s5926 $1'
  if [ -z "$2" ]
  then
     eval '/home/andy/bin/fsash.sh 172.16.92.$1 123admin'
  elif [ $2 -eq "0" ]
  then
    echo nopassword
    eval '/home/andy/bin/fsash.sh 172.16.92.$1'
  else
      eval '/home/andy/bin/fsash.sh 172.16.92.$1 $2'
  fi
}
alias ssh90="~/bin/fsash.sh 172.16.92.90 g00dPwd15"
alias ssh38="~/bin/fsash.sh 172.16.92.38 g00dPwd19"
alias ssh89="ssh admin@172.16.92.89"
alias scp132="~/bin/scp132.sh"

# for android sdk
# JAVA_HOME="/usr/lib/jvm/java-8-oracle"

JAVA_HOME8="~/opt/jdk1.8.0_144/"
JAVA_HOME7="~/opt/jdk1.7.0_79/"
JAVA_HOME=$JAVA_HOME7
export JAVA_HOME
JAVA_HOME_BIN=$JAVA_HOME'/bin'
export PATH=$PATH:$JAVA_HOME_BIN:~/opt/apache-maven-3.5.0/bin
# To run eclipse with GTK2:https://www.eclipse.org/forums/index.php/t/1081230/
export SWT_GTK3=0

# now I have removed Android Sdk, so comment below. yeyuan Yuan@Jan 4, 2017
# export ANDROID_HOME=$HOME/Android/Sdk
# export PATH=$PATH:$ANDROID_HOME/tools:/usr/bin
NODE_PATH="/usr/local/lib/node_modules"
export NODE_PATH
export PATH=~/bin:$PATH

alias jhome="update-alternatives --config java"
unsetopt share_history

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
