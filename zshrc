# @author     Sebastian Tramp <mail@sebastian.tramp.name>
# @license    http://opensource.org/licenses/gpl-license.php
#
# the main RC file (will be linked to ~/.zshrc)
#

export ZSH_CONFIG="$HOME/.zsh"

typeset -ga sources
sources+="$ZSH_CONFIG/environment.zsh"
sources+="$ZSH_CONFIG/options.zsh"
sources+="$ZSH_CONFIG/prompt.zsh"
sources+="$ZSH_CONFIG/aliases.zsh"
sources+="$ZSH_CONFIG/functions.zsh"
sources+="$ZSH_CONFIG/kube_completion.zsh"
sources+="$ZSH_CONFIG/kube-ps1.zsh"

# Check for a system specific file
systemFile=`uname -s | tr "[:upper:]" "[:lower:]"`
sources+="$ZSH_CONFIG/$systemFile.zsh"

# private configuration
sources+="$ZSH_CONFIG/private.zsh"

# completion config needs to be after system config
sources+="$ZSH_CONFIG/completion.zsh"

# virtualenv wrapper shell functions
sources+="/usr/bin/virtualenvwrapper.sh"

# try to include all sources
foreach file (`echo $sources`)
    if [[ -a $file ]]; then
        source $file
    fi
end
if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval `ssh-agent -s`
  ssh-add
fi

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux -2
fi

### Added by Zplugin's installer
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk
#
#
export ZSH_CONFIG="$HOME/.zsh"
source "$ZSH_CONFIG/plugins.zsh"

# Autoload my personal zsh funcs
FPATH="$FPATH:$ZSH_CONFIG/funcs"
autoload -Uz $(find  "$ZSH_CONFIG/funcs" -maxdepth 1 -not -type d)

