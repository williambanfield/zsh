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
alias vpn="ssh $vpn"
alias rig="ssh $rig"

alias tmail="mail -t bin/t"
alias txmpp="xmpp -t bin/t"
alias trig="rig -t bin/t"
alias tweb="web -t bin/t"
alias tvpn="vpn -t bin/t"
