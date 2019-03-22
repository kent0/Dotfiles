set -s escape-time 0
unbind C-b
set -g prefix C-x
bind C-x send-prefix

bind r source-file ~/.tmux.conf

bind -n M-h select-pane -L
bind -n M-j next-window
bind -n M-k previous-window
bind -n M-l select-pane -R

set -g status-bg 8
set -g status-fg green
set -g status-right '#H'
