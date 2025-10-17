if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git docker kubectl npm)
source $ZSH/oh-my-zsh.sh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#### TUNING ####

# Homebrew
export PATH=/opt/homebrew/bin:$PATH

# Auto-Completion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'  # Insensible à la casse
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"     # Couleurs
setopt COMPLETE_ALIASES                                      # Complétion des alias
setopt AUTO_LIST                                             # Liste automatique des choix
setopt AUTO_MENU                                             # Menu de complétion automatique

# Vim Keybindings
bindkey -v

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
