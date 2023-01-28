## Directory
alias cdw='cd ~/Documents/work/insystemplus'

## vim 
if ! command -v vim &> /dev/null; then alias vim="vi"; fi
if command -v nvim &>/dev/null; then alias vim="nvim"; fi 

## ssh
alias sshk='ssh -o "StrictHostKeyChecking=no"'

## git
alias ga='git add' 
alias gs='git status'
alias gcm='git commit -m'
alias gps='git push -u origin stage' 
alias gchb='git checkout -b' 
alias gba='git branch -a' 
alias gch='git checkout' 
alias gpu='git push -u origin'
alias gpcur='git push -u origin HEAD'
alias glo="git log --oneline"
alias glol="git log --graph --decorate --pretty=oneline --abbrev-commit"
alias glola="git log --graph --decorate --pretty=oneline --abbrev-commit --all"
alias gwip='git commit -am "wip" && gpcur'

## tmux 
alias tm='tmux'

## ps
# get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
# get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

## Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

## network
alias ipl="dig +short myip.opendns.com @resolver1.opendns.com"


## docker
alias d="docker"


## ansible
alias ap="ansible-playbook"
alias a="ansible"

##terraform 
alias t="terraform"

##systemd
alias sctlr='systemctl restart'
alias sctls="systemctl status" 


## ipython
alias ipython='ipython --TerminalInteractiveShell.editing_mode=vi'
