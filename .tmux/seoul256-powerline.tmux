# This tmux statusbar config was created by tmuxline.vim
# on Wed, 08 Apr 2015

set -g status-bg "colour233"
set -g message-command-fg "colour233"
set -g status-justify "left"
set -g status-left-length "100"
set -g status "on"
set -g pane-active-border-fg "colour109"
set -g message-bg "colour109"
set -g status-right-length "100"
set -g status-right-attr "none"
set -g message-fg "colour233"
set -g message-command-bg "colour109"
set -g status-attr "none"
set -g pane-border-fg "colour239"
set -g status-left-attr "none"
setw -g window-status-fg "colour109"
setw -g window-status-attr "none"
setw -g window-status-activity-bg "colour233"
setw -g window-status-activity-attr "none"
setw -g window-status-activity-fg "colour109"
setw -g window-status-separator ""
setw -g window-status-bg "colour233"
set -g status-left "#[fg=colour233,bg=colour109] #S #[fg=colour109,bg=colour233,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=colour239,bg=colour233,nobold,nounderscore,noitalics]#[fg=colour253,bg=colour239] %Y-%m-%d  %H:%M #[fg=colour109,bg=colour239,nobold,nounderscore,noitalics]#[fg=colour239,bg=colour109]ϟ#(battery) "
setw -g window-status-format "#[fg=colour109,bg=colour233] #I #[fg=colour109,bg=colour233] #W "
setw -g window-status-current-format "#[fg=colour233,bg=colour109,nobold,nounderscore,noitalics]#[fg=colour252,bg=colour109] #I #[fg=colour233,bg=colour109,nobold,nounderscore,noitalics]#[fg=colour233,bg=colour109] #W #[fg=colour109,bg=colour233,nobold,nounderscore,noitalics]"

# seoul256 copy mode colors
# XXX: hexadecimal RBG strings aren't working on linux
#setw -g mode-fg "#000000"
#setw -g mode-bg "#87d7d7"
set -g mode-style bg=brightcyan,fg=black
