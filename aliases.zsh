# vi
if command -v nvim >/dev/null
then
  alias vim=nvim
fi

# git
alias g=git
alias gcam='git commit -am'
alias gch='git checkout'
alias gcb='git checkout -b'

# cd
alias cd=' cd'

#docker compose
alias dcd='docker-compose down'
alias dcu='docker-compose up -d'

# misc
alias grep='grep --color=auto'
alias l=' ls -l'
less=`command -v less`
alias less="$less -RFX"
alias lesss="$less -Rr"


