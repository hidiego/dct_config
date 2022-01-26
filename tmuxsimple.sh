#!/bin/zsh
cd $1
tmux new-window -n workweb
tmux split-window -v -p 30
tmux send-keys C-z 'npm start' Enter
tmux last-pane
tmux send-keys C-z 'vim' Enter
tmux select-pane -t 1





