## enable hook method
autoload add-zsh-hook

function get_pane_cachedir() {
  tmux display-message -p "$HOME/.cache/wut/#S_#I_#P"
}

function startCmdPipe() {
  lastcmd="$3"
  cachedir="$(get_pane_cachedir)"
  mkdir -p "$cachedir"
  tmux pipe-pane -t "$TMUX_PANE" "cat | sed 's/\x1b\[[0-9;]*m//g' > $cachedir/lastoutput_buffer"
}

function stopCmdPipe() {
  tmux pipe-pane -t "$TMUX_PANE"
  cachedir="$(get_pane_cachedir)"
  if [[ -f "$cachedir/lastoutput_buffer" ]]; then
    mv "$cachedir/lastoutput_buffer" "$cachedir/lastoutput"
  fi
  echo "$lastcmd" >"$cachedir/lastcmd"
}

add-zsh-hook preexec startCmdPipe
add-zsh-hook precmd stopCmdPipe

function lastCmd() {
  cachedir="$(get_pane_cachedir)"
  echo "$ $(cat $cachedir/lastcmd)"
  cat "$cachedir/lastoutput"
}
