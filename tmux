set -s escape-time 0
unbind C-b
set -g prefix C-x
bind C-x send-prefix

bind r source-file ~/.tmux.conf

bind -n M-h previous-window
bind -n M-l next-window

bind -n M-k switch-client -p
bind -n M-j switch-client -n

set -g status-bg 8
set -g status-fg green
set -g status-right '#H'
