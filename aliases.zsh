# vi
if command -v nvim >/dev/null
then
  alias v=nvim
  alias vi=nvim
  alias vim=nvim
fi

# git
alias git=hub
alias g=git
alias lol='git lol'

# cd
alias cd=' cd'
alias ..=' cd ..'
alias ...=' cd ../..'
alias ....=' cd ../../..'

# misc
alias grep='grep --color=auto'
alias l=' ls -l'

# py
alias py='ptipython --vi'
alias activate="source $HOME/py/bin/activate"

# ssh
alias athena="ssh $athena"
alias athenax="ssh -Y $athena"
alias web="ssh $web"
alias mail="ssh $mail"
alias xmpp="ssh $xmpp"
alias compute="ssh $compute"
alias rig="ssh $rig"

alias tmail="mail -t tmux -u new -A -s mail"
alias txmpp="xmpp -t tmux -u new -A -s irssi"
alias tdev="rig -t tmux -u new -A -s dev"
