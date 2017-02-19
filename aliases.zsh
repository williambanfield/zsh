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
alias web="ssh me@lucasem.com"
alias mail="ssh me@mail.lucasem.com"
alias xmpp="ssh me@xmpp.lucasem.com"
alias compute="ssh me@compute.lucasem.com"
alias pro="ssh 18.102.222.191"
