set -s escape-time 0
unbind C-b
set -g prefix C-x
bind C-x send-prefix

bind r source-file ~/.tmux.conf

bind -n M-h next-window
bind -n M-l previous-window

bind -n M-j switch-client -n
bind -n M-k switch-client -p

set -g status-bg 8
set -g status-fg green
set -g status-right '#H'
