#!/bin/bash

SESSION_NAME="default"
session_name() {
  SESSION_NAME=$1
}

select_window() {
  CURRENT_WINDOW=$1
}

select_pane() {
  CURRENT_PANE=$1
}

new_session() {
  tmux new-session -d -s "$SESSION_NAME" -c "$(pwd)"
}

new_window() {
  tmux new-window -t "$SESSION_NAME" -c "$(pwd)" -n $1
  select_window $1
}

split_vertical() {
  tmux split-window -t "$SESSION_NAME:$CURRENT_WINDOW.$CURRENT_PANE" -c "$(pwd)" -v -l $1
  select_pane $(($CURRENT_PANE + 1))
}

split_horizontal() {
  tmux split-window -t "$SESSION_NAME:$CURRENT_WINDOW.$CURRENT_PANE" -c "$(pwd)" -h -l $1
  select_pane $(($CURRENT_PANE + 1))
}

rename_window() {
  tmux rename-window -t "$SESSION_NAME:$CURRENT_WINDOW" $1
}

attach_to_session() {
  tmux attach-session -t "$SESSION_NAME"
}

run_command() {
  tmux send-keys -t "$SESSION_NAME:$CURRENT_WINDOW.$CURRENT_PANE" "$1" C-m
}
