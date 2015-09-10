# @author     Sebastian Tramp <mail@sebastian.tramp.name>
# @license    http://opensource.org/licenses/gpl-license.php
#
# Basic environment settings related to the zsh compiliation (not private)

#PATH:
#  from /etc/paths
#    /usr/local/bin:
#    /usr/bin:
#    /bin:
#    /usr/sbin:
#    /sbin:
#  from /etc/paths.d/*
#    /opt/X11/bin:
#    /usr/local/go/bin:
#    /usr/texbin:

# athena
export athena="lucasem@athena.dialup.mit.edu"
export lm=$athnea":web_scripts/lm"
export sigep=$athena":../../../../activity/s/sigep/web_scripts/public"

# my bins
export PATH=$PATH:$HOME/bin

# golang
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# scala
export SCALA_HOME=/usr/local/scala
export PATH=$PATH:$SCALA_HOME/bin

# zsh
export ZSH_CONFIG="$HOME/.config/zsh"
export ZSH_CACHE="$HOME/.cache/zsh"
mkdir -p $ZSH_CACHE

# TLA+
export CLASSPATH=/usr/local/tla

