# vi
if command -v nvim >/dev/null
then
  alias v=nvim
  alias vi=nvim
  alias vim=nvim
else
  alias v=vim
  alias vi=vim
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
less=`command -v less`
alias less="$less -RFX"
alias lesss="$less -Rr"

# py
alias py='ptipython'
alias activate="source $HOME/.py/bin/activate"

# ssh
alias athena="ssh $athena"
alias athenax="ssh -Y $athena"
alias web="mosh $web"
alias mail="ssh $mail"
alias vpn="ssh $vpn"
alias rig="mosh $rig"

alias tmail="mail -t bin/t"
alias trig="rig bin/t"
alias tcomm="rig bin/tcomm"
alias tweb="web bin/t"
alias tvpn="vpn -t bin/t"
