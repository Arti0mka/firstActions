#!/bin/sh
mkdir /tmp/works
cd /tmp/works/
sudo apt install iftop
sudo apt install nmon
#tmux new-session -d
tmux split-window -v
tmux split-window -v 'sudo iftop'
tmux split-window -h 'export NMON=c&&nmon'
