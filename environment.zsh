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

# npm
export PATH=~/.npm-global/bin:$PATH

# virtualenvs 
export WORKON_HOME=~/.virtualenvs


export EDITOR=vim

# kubebuilder
export PATH=$PATH:/usr/local/kubebuilder/bin

# cquery
export PATH=$PATH:/usr/local/cquery/bin
