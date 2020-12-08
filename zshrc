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
# manage sshd on Ubuntu
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
alias vz="vim ~/.zshrc"
alias ss="source ~/.zshrc"
alias mz="more ~/.zshrc"
alias vv="vim ~/.vimrc"
alias vp="vim patch.diff"
# alias vundle="vim +PluginInstall +qall"
alias vimplug="vim +PlugInstall +qall"
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

# Pihyun nx2
alias upwx="scp -i ~/keys/nx_pub_id_rsa ~/dev/codegit/energy-info-export/dist/w.tgz root@pihyun.cn:/home/app/weixin"
alias distwx="scp -i ~/keys/nx_pub_id_rsa ~/dev/codegit/energy-info-export/dist.zip root@pihyun.cn:/u01/wars/dist.zip"
alias pdcslog="scp -i ~/keys/nx_pub_id_rsa root@pihyun.cn:/home/work/dcs_log/pub_log.tgz  ~/Downloads "
alias hdcslog="scp -i ~/keys/nx_pub_id_rsa root@pihyun.cn:/home/work/dcs_log/hotel_log.tgz  ~/Downloads "
alias pdcslog_mac="scp -i ~/keys/id_rsa_2048_yuanye  root@pihyun.cn:/home/work/dcs_log/pub_log.tgz ~/Downloads "
alias hdcslog_mac="scp -i ~/keys/id_rsa_2048_yuanye  root@pihyun.cn:/home/work/dcs_log/hotel_log.tgz ~/Downloads "

# FCT
alias vpn='sudo /opt/forticlient/vpn -s scm.van.corp.fortinet.com:443 -uayuan -pYY@ftnt8'
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
alias ga="git add"
alias gc="git checkout"
alias gcm="git commit --amend"
alias gco="git checkout"
alias gd="git diff"
alias gdn="git diff --name-only origin/master"
alias gdc="git diff --compact-summary origin/master"
alias gds="git diff  --stat origin/master"
alias gdr="git diff origin/master"
alias gdv="git difftool --tool=vimdiff --no-prompt origin/master"
alias gp="git pull --rebase"
alias gpl="git pull --rebase"
alias gps="git push"
alias gpu="git push"
alias gst="git status -uno"
alias gsm="git status |grep modified"
alias gsw="git status web"
alias gswm="git status web|grep modified"
alias gsmw="git status web|grep modified"
alias gg="git log -5"
alias gclean="git clean -xdf"
# alias gcl="git clone --branch br_3-2_ui_migration  git@git.corp.fortinet.com:fsa/fortisandbox.git br_ui_migration" # git clone a branch to specific folder

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
alias t5='cd ~/opt/fsa/root/trunk5'
alias t5w='cd ~/opt/fsa/root/trunk5/web'
alias t6='cd ~/opt/fsa/root/trunk6'
alias t6w='cd ~/opt/fsa/root/trunk6/web'
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
alias rmst='sudo /bin/rm -fr ~/opt/fsa/Storage/quarantine/* ~/opt/fsa/Storage/suspicious/* ~/opt/fsa/Storage/clean/* ~/opt/fsa/ramdisk/*.db'
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
s5928(){
  # eval '/usr/bin/s5928 $1'
  if [ -z "$2" ]
  then
     eval '~/bin/fsash.sh 10.59.28.$1 123admin'
  elif [ $2 -eq "0" ]
  then
    echo nopassword
    eval '~/bin/fsash.sh 10.59.28.$1'
  else
      eval '~/bin/fsash.sh 10.59.28.$1 $2'
  fi
}
s5950(){
  # eval '/usr/bin/s5926 $1'
  if [ -z "$2" ]
  then
     eval '~/bin/fsash.sh 10.59.50.$1 123admin'
  elif [ $2 -eq "0" ]
  then
    echo nopassword
    eval '~/bin/fsash.sh 10.59.50.$1'
  else
      eval '~/bin/fsash.sh 10.59.50.$1 $2'
  fi
}
s59(){
  if [ -z "$2" ]
  then
     eval '~/bin/fsash.sh 10.59.$1 123admin'
  elif [ $2 -eq "0" ]
  then
    echo nopassword
    eval '~/bin/fsash.sh 10.59.$1'
  else
      eval '~/bin/fsash.sh 10.59.$1 $2'
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

NODE_PATH="/usr/local/lib/node_modules"
export NODE_PATH
export PATH=~/bin:/home/andy/.local/bin:/home/andy/bin:$PATH

unsetopt share_history

# see https://dev.to/matrixersp/how-to-use-fzf-with-ripgrep-to-selectively-ignore-vcs-files-4e27
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --no-ignore-vcs'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS='--height 96% --reverse --preview "cat {}"'
alias fzfi='rg --files --hidden --follow --no-ignore-vcs -g "!{node_modules,.git,*.png,*.jpg,*.gif,src/assets/*}" | fzf'
alias vifi='vim $(fzfi)'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
RPROMPT='%*'
PROMPT='%F{green}%* ${SSH_TTY:+"%F{9}%n%f%F{7}@%f%F{3}%m%f "}%F{4}${_prompt_sorin_pwd}%(!. %B%F{1}#%f%b.)${editor_info[keymap]} '
