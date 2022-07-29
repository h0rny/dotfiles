export ZSH="/Users/artem/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git fzf docker kubectl ansible)

source $ZSH/oh-my-zsh.sh
source $HOME/.bash_aliases

set -o vi

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /sbin/terraform terraform

source /opt/homebrew/Cellar/fzf/0.30.0/shell/key-bindings.zsh
source /opt/homebrew/Cellar/fzf/0.30.0/shell/completion.zsh
source ~/.key-bindings.zsh

#source ~/config/set-tmux-title.sh


complete -o nospace -C /usr/local/bin/terraform terraform

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

if [ -f '/Users/artem/yandex-cloud/completion.zsh.inc' ]; then source '/Users/artem/yandex-cloud/completion.zsh.inc'; fi


export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"


autoload edit-command-line; zle -N edit-command-line
bindkey -M vicmd v edit-command-line

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

setopt CORRECT_ALL
SPROMPT="Ошибка! Вы хотели ввести %r вместо %R? ([Y]es/[N]o/[E]dit/[A]bort) "
 
h=()
if [[ -r ~/.ssh/config ]]; then
  h=($h ${${${(@M)${(f)"$(cat ~/.ssh/config)"}:#Host *}#Host }:#*[*?]*})
fi
if [[ -r ~/.ssh/known_hosts ]]; then
  h=($h ${${${(f)"$(cat ~/.ssh/known_hosts{,2} || true)"}%%\ *}%%,*}) 2>/dev/null
fi
if [[ $#h -gt 0 ]]; then
  zstyle ':completion:*:ssh:*' hosts 
  zstyle ':completion:*:slogin:*' hosts $h
fi
