#!/bin/zsh
tmux new-window -n DeFiChain-code -c $HOME/workspace/ain
tmux split-window -v -p 30 -c "#{pane_current_path}"
tmux send-keys C-z 'export PATH="$(pwd)/src:$PATH" && clear' Enter
tmux last-pane
tmux send-keys C-z 'cw' Enter

# debug window htop | lldb
tmux new-window -n DeFiChain-debug -c $HOME/workspace/ain/test/functional/
tmux split-window -h -p 15 -c "#{pane_current_path}"
tmux last-pane
tmux split-window -v -p 30 -c "#{pane_current_path}"
tmux select-pane -t 3
tmux send-keys C-z 'export HTOPRC=/home/dcorral/tmp/htoprc && htop -F defid' Enter
tmux select-pane -t 1
tmux send-keys C-z 'sudo lldb'
sleep 1

# testnet window
tmux new-window -n DeFiChain-testnet -c $HOME/workspace/ain
tmux split-window -h -p 50 -c "#{pane_current_path}"
tmux send-keys C-z 'export PATH="$(pwd)/src:$PATH"' Enter
sleep 2
tmux send-keys C-z 'defi-cli -testnet '
tmux last-pane
tmux send-keys C-z 'export PATH="$(pwd)/src:$PATH"' Enter
sleep 1.2
tmux send-keys C-z "pkill -f 'defid -testnet' > /dev/null 2>&1" Enter
sleep 1.2
tmux send-keys C-z 'defid -testnet' Enter

# go back to main code window
tmux select-window -t 'DeFiChain-code'









