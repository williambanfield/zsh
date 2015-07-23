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

# highlights the live command line
# Cloned From: git://github.com/nicoulaj/zsh-syntax-highlighting.git
sources+="$ZSH_CONFIG/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# Check for a system specific file
systemFile=`uname -s | tr "[:upper:]" "[:lower:]"`
sources+="$ZSH_CONFIG/$systemFile.zsh"

# private configuration
sources+="$ZSH_CONFIG/private.zsh"

# completion config needs to be after system config
sources+="$ZSH_CONFIG/completion.zsh"

# try to include all sources
foreach file (`echo $sources`)
    if [[ -a $file ]]; then
        source $file
    fi
end
