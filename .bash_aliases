#!/usr/bin/env bash

# File Management
alias ll='ls -la'
alias l='ls -CF'
alias rm='rm -i'

# Navigation 
alias ..='cd ..'
alias ...='cd ../..'
alias ~='cd ~'

# Searching and Finding
alias grep='grep --color=auto'   
alias fgrep='fgrep --color=auto' 
alias egrep='egrep --color=auto' 
alias find='find . -name'        

# Networking
alias ip='curl ipinfo.io/ip'      

# Git
alias g='git'                     
alias gs='git status'             
alias ga='git add'                
alias gc='git commit -m'          
alias gp='git push'               
alias gpl='git pull'              
alias gb='git branch'             
alias gco='git checkout'          

# Monitoring
alias top='htop'                  
alias df='df -h'                  
alias du='du -h'                  
alias free='free -h'             

# Misc
alias update='sudo apt update && sudo apt upgrade'


