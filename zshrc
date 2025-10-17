if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Auto-completion
autoload -Uz compinit
compinit

# Options d'autocomplétion améliorées
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'  # Insensible à la casse
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"     # Couleurs
setopt COMPLETE_ALIASES                                      # Complétion des alias
setopt AUTO_LIST                                             # Liste automatique des choix
setopt AUTO_MENU                                             # Menu de complétion automatique

# Vim mode
bindkey -v

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# display name
# export DEFAULT_USER=$USER

plugins=(git docker kubectl npm)

# User configuration
ZSH_THEME="powerlevel10k/powerlevel10k"

# export MANPATH="/usr/local/man:$MANPATH"
export PATH=/opt/homebrew/bin:$PATH

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Aliases
alias todo='vim "$HOME/syncthing/tech/notes/_todo.txt"'
alias journal='vim "$HOME/syncthing/tech/notes/_journal.txt"'
alias scratch='vim "$HOME/syncthing/tech/notes/_scratchpad.txt"'
alias projects='vim "$HOME/syncthing/tech/notes/_projects.txt"'
alias notes='cd "$HOME/syncthing/tech/notes/"'
alias code='cd "$HOME/syncthing/tech/code/"'
alias finances='cd "$HOME/syncthing/personal/finances/"'
alias vvim='vim "$HOME/syncthing/tech/notes/vim.md"'
alias ttmux='vim "$HOME/syncthing/tech/notes/tmux.md"'
alias gs='git status'
alias ga='git add .'
alias gp='git push'
alias gpl='git pull'
alias gcm='git commit -m'
alias r='source .zshrc'
alias hcompta='hledger -f "$HOME/syncthing/personal/finances/compta.journal"'
alias hmanual='vim "$HOME/syncthing/personal/finances/compta.journal"'
alias hadd='hcompta add'
alias hreg='hcompta register'
alias hbud='hcompta bal --budget'
alias hres='hcompta incomestatement'
alias hweb='hcompta web'
alias dcd='docker-compose down'
alias dcu='docker-compose up -d'
alias dcl='docker-compose logs'

# Cheat.sh
cheat() {
        curl cheat.sh/$1
}
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Created by `pipx` on 2025-08-25 07:30:49
   export PATH="$PATH:/home/benj/.local/bin"

cd ~/

POWERLEVEL10K_CONTEXT_TEMPLATE="%n"
