export ZSH="/Users/artem/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git fzf docker kubectl ansible)

source $ZSH/oh-my-zsh.sh
source $HOME/.bash_aliases


set -o vi
bindkey -v

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /sbin/terraform terraform

source /usr/local/Cellar/fzf/0.30.0/shell/key-bindings.zsh
source /usr/local/Cellar/fzf/0.30.0/shell/completion.zsh
source ~/.key-bindings.zsh
source ~/.bash_aliases  

source ~/config/set-tmux-title.sh

complete -o nospace -C /usr/local/bin/terraform terraform

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

if [ -f '/Users/artem/yandex-cloud/completion.zsh.inc' ]; then source '/Users/artem/yandex-cloud/completion.zsh.inc'; fi

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

autoload edit-command-line; zle -N edit-command-line
bindkey -M vicmd v edit-command-line

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

### not dublpe command in history 
setopt HIST_IGNORE_DUPS
