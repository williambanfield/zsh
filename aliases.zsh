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
alias gcb='git checkout -b'
alias gchm='git checkout master'

# github
alias ghb='gh browse --branch `git rev-parse master`'
alias myprs='gh pr list -A williambanfield'

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

alias k='kubectl'


alias cb='xclip -i -selection clipboard'

alias rg-go='rg  -g "!vendor/**" -g "*.go"'

alias rg-java='rg  -g  "*.java"'

alias modroot='go env | grep GOMOD= | sed "s/GOMOD=\"\(.*\)go.mod\"/\1/g"'

# go to the root of the current go module
alias cdg='cd modroot'

# alias for starting the modd watcher program with a config for re-building and testing go programs.
alias mg='modd-go'

alias tf='terraform'

