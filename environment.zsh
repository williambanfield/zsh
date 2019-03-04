# golang
export GOROOT=/usr/lib/go
export GOPATH=$HOME/godev
export GOBIN=$GOPATH/godev/bin
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$GOPATH/bin

# zsh
export ZSH_CONFIG="$HOME/.config/zsh"
export ZSH_CACHE="$HOME/.cache/zsh"
mkdir -p $ZSH_CACHE


# bins
export PATH=$HOME/bin:$PATH:$GOBIN

# virtualenvs 
export WORKON_HOME=~/.virtualenvs

