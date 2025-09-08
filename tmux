set -g mouse on
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'dracula/tmux'

set -g @dracula-show-powerline true
set -g @dracula-show-flags true
set -g @dracula-show-left-icon session
set -g @dracula-refresh-rate 5
#set -g @dracula-cpu-usage-label "CPU"
#set -g @dracula-cpu-display-load true

run -b '~/.tmux/plugins/tpm/tpm'
