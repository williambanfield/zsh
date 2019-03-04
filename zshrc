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
eval "$(ssh-agent -s)" > /dev/null

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux -2
fi
export ZSH_CONFIG="$HOME/.zsh"


### Added by Zplugin's installer
source '/home/will/.zplugin/bin/zplugin.zsh'
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk
#
source "$ZSH_CONFIG/plugins.zsh"
