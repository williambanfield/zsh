# @author     Sebastian Tramp <mail@sebastian.tramp.name>
# @license    http://opensource.org/licenses/gpl-license.php
#
# shell options as history size, keyindings, etc
#

# History Settings (big history for use with many open shells and no dups)
# Different History files for root and standard user
if (( ! EUID )); then
    HISTFILE=$ZSH_CACHE/history_root
else
    HISTFILE=$ZSH_CACHE/history
fi
SAVEHIST=100000000000
HISTSIZE=100000000000
setopt share_history append_history extended_history hist_no_store hist_ignore_all_dups hist_ignore_space

zle -C hist-complete complete-word _generic
zstyle ':completion:hist-complete:*' completer _history
bindkey '^X^X' hist-complete
bindkey -e

setopt AUTO_CD EXTENDED_GLOB NOMATCH TRANSIENT_RPROMPT COMPLETE_IN_WORD AUTO_PUSHD PUSHD_IGNORE_DUPS clobber IGNOREEOF
