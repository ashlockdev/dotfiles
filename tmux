#Jason Ashlock tmux Configuration file

#if run as 'tmux attach' create session if one doesn't exist
new-session -n $HOST

#enable powerline
run-shell 'powerline-daemon -q'
source '/usr/local/lib/python3.4/dist-packages/powerline/bindings/tmux/powerline.conf'

#Set the size panes you want
setw -g aggressive-resize on

#Replace Ctrl-b with Ctrl-a as the prefix
set -g prefix C-a
unbind C-b

#Set the time between prefix and command
set -s escape-time 1

#Ensure we can send Ctrl-a to other applications
bind C-a send-prefix

#Set the base index for windows and panes to 1 instead of 0
set -g base-index 1
set -g pane-base-index 1

#Reload file with prefix r
bind r source-file ~/.tmux.conf \; display "Reloaded!"

#Close all windows and panes 
bind Z confirm-before kill-session

#splitting panes
bind | split-window -h
bind - split-window -v

#moving between panes
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

#quick pane selection
bind -r C-h select-window -t :-
bind -r C-l select-window -t :+

#pane resizing
bind -r H resize-pane -L 5
bind -r J resize-pane -D 5
bind-key -n C-\ resize-pane -D 5
bind -r K resize-pane -U 5
bind -r L resize-pane -R 5

#mouse support --off
setw -g mode-mouse on
set -g mouse-select-pane on
set -g mouse-resize-pane on
set -g mouse-select-window on

#set the default terminal mode to 256 colors
set -g default-terminal "screen-256color"

#enable activity alerts
setw -g monitor-activity on
set -g visual-activity on

#set the status line colors
set -g status-fg white
set -g status-bg black

#set the color of the window list
setw -g window-status-fg cyan
setw -g window-status-bg default
setw -g window-status-attr bright

#pane colors
set -g pane-border-fg green
set -g pane-border-bg black
set -g pane-active-border-fg white
set -g pane-active-border-bg yellow

#set colors for the active window
setw -g window-status-current-fg white
setw -g window-status-current-bg red 
setw -g window-status-current-attr bright

#Command / message line
set -g message-fg white
set -g message-bg black
set -g message-attr bright

#Status line left side
set -g status-left-length 40
set -g status-left "#[fg-green]Session: #S #[fg=yellow]#I #[fg=cyan]#P"

#UTF8
set -g status-utf8 on

#status line right side
# 15% | 20 Nov 18:15
set -g status-right "#(~/scripts/battery Discharging) | #[fg=cyan]%d %b %R"

#Update the status line every 60 seconds
set -g status-interval 60

#Center the window list
set -g status-justify centre

#enable vi keys
setw -g mode-keys vi

#shortcut for synchronize-panes toggle
bind C-s set-window-option synchronize-panes

#unbind Down
bind Down last-window \; swap-pane -s tmp.1 \; kill-window -t tmp

#Log output to a text file on demand
bind P pipe-pane -o "cat >>-/#W.log" \; display "Toggled logging to ~/#W.log"

