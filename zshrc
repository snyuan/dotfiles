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
alias rm="rm -f"
 
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

# SVN commands
alias sd="svn diff"
alias sdf="svn diff --summarize"
alias sup="svn update"
alias ssm="svn st|grep M"
alias sswm="svn st web|grep M"
alias sg="svn log --limit 3"
alias sgl="svn log --limit $1"
alias sgr="svn log -v -r $1"

# Fortinet Shortcuts
alias fsa='cd /opt/fsa'
alias cdir='cd /opt/fsa && ./fdev.sh'
alias tk='cd /opt/fsa/trunk'
alias ctk='cd /opt/fsa/commit/tk'
alias tk22='cd /opt/fsa/trunk2.2'
alias ctk22='cd /opt/fsa/commit/22'
alias sandbox='cd /opt/fsa/trunk/web/sandbox'
alias fsadb='cd /opt/fsa/drive0/private/db-install'
alias guidb='sqlite3 /opt/fsa/drive0/private/db-install/FortiSandboxGUI.db'
alias storage='cd /opt/fsa/Storage'
alias rmstore='rm -fr /opt/fsa/Storage/* /opt/fsa/drive0/private/db-install/* /opt/fsa/drive0/private/statistics/*'
alias pvt='cd /opt/fsa/drive0/private'
alias ssh32="ssh admin@172.16.69.32"
alias ssh34="ssh admin@172.16.69.34"
alias ssh90="ssh admin@172.16.92.90"
alias ssh89="ssh admin@172.16.92.89"
alias ssh96="ssh admin@172.16.69.96"
alias ssh146="ssh admin@172.16.69.146"
alias ssh154="ssh admin@172.16.69.154"
alias ssh155="ssh admin@172.16.69.155"
alias ssh97="ssh admin@172.17.94.97"
alias tel97="telnet 172.17.93.191 2043"
