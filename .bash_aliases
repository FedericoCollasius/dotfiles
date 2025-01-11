#!/usr/bin/env bash

# File Management
alias ll='ls -la'
alias l='ls -CF'
alias rm='rm -i'

# Navigation 
alias ..='cd ..'
alias ...='cd ../..'
alias ~='cd ~'

# Networking
alias ports='netstat -tulanp'

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

# NVim/Vim
alias vi='/usr/bin/vim'
alias vim='/usr/bin/nvim'

# U&R
alias hdi='ssh uyr@172.18.6.105 -p 8022'
