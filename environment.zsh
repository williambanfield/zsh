# golang
if [[ `uname` == 'Linux' ]]; then
    export GOROOT=/usr/lib/go
fi
export GOPATH=$HOME/godev
export PYTHONPATH=$HOME/.local/bin
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$GOPATH/bin

# zsh
export ZSH_CONFIG="$HOME/.config/zsh"
export ZSH_CACHE="$HOME/.cache/zsh"
mkdir -p $ZSH_CACHE

# bins
export PATH=$HOME/bin:$PATH:$GOBIN
export PATH=$HOME/.gptscripts:$PATH

# pip 
export PATH=$PYTHONPATH:$PATH

# npm
export PATH=~/.npm-global/bin:$PATH

# virtualenvs 
export WORKON_HOME=~/.virtualenvs

export EDITOR=nvim

# gpg key
export GPG_TTY=$(tty)

# cquery
export PATH=$PATH:/usr/local/cquery/bin

ulimit -n 65536
