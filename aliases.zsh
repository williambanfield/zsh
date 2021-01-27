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

# color grep
alias grep='grep --color=auto'

# l to list long
alias l=' ls -l'

less=`command -v less`
alias less="$less -RFX"
alias lesss="$less -Rr"

# open file for editing with e
alias v="vim"

alias e="exit"

alias hsvault-stage='VAULT_ADDR=$VAULT_ADDR_STAGE hsvault'

alias go113='GOROOT=/usr/lib/go-1.13 /usr/lib/go-1.13/bin/go'

alias kube-update='curl -sS --user $(whoami) -o ~/.kube/config https://kubeconfig-generator.squarespace.net'

alias cb='xclip -i -selection clipboard'

alias rg-go='rg  -g "!vendor/**" -g "*.go"'

alias rg-java='rg  -g  "*.java"'
