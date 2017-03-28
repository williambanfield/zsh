# athena
export athena='athena.dialup.mit.edu'
export web='lucasem.com'
export mail="mail.$web"
export xmpp="xmpp.$web"
export compute="compute.$web"
export rig="rig.$web"

# my bins
export PATH=$HOME/bin:$PATH

# golang
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$GOPATH/bin

# rust
export PATH=$PATH:$HOME/.cargo/bin

# scala
export SCALA_HOME=/usr/local/scala
export PATH=$PATH:$SCALA_HOME/bin

# db
export PATH=$PATH:/usr/local/mysql/bin
export PATH=$PATH:/usr/local/mongodb/bin

# zsh
export ZSH_CONFIG="$HOME/.config/zsh"
export ZSH_CACHE="$HOME/.cache/zsh"
mkdir -p $ZSH_CACHE

# TLA+
export CLASSPATH=/usr/local/tla
