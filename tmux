setw -g mode-keys vi
bind -T copy-mode-vi Space send -X begin-selection
bind -T copy-mode-vi Enter send -X copy-selection-and-cancel
