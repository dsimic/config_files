#!/bin/bash
# var for session name (to avoid repeated occurences)
sn=xyz

# Start the session and window 0 in /etc
#   This will also be the default cwd for new windows created
#   via a binding unless overridden with default-path.
cd ~/devel
tmux new-session -s "$sn" -n devel -d
tmux split-window -h
tmux select-pane -t 1 
tmux resize-pane -R 22

# Create a bunch of windows in /var/log
cd ~/devel
for i in {1..2}; do
    tmux new-window -t "$sn:$i" -n "var$i"
    tmux split-window -h
    tmux select-pane -t 1 
    tmux resize-pane -R 22
done

# Set the default cwd for new windows (optional, otherwise defaults to session cwd)
#tmux set-option default-path /

# Select window #1 and attach to the session
tmux select-window -t "$sn:0"
tmux -2 attach-session -t "$sn"
