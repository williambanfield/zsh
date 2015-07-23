# @author     Sebastian Tramp <mail@sebastian.tramp.name>
# @license    http://opensource.org/licenses/gpl-license.php
#
# shell options as history size, keyindings, etc
#

# keybindings Strg+v is your friend :-)
bindkey "^[[1;5D" .backward-word
bindkey "^[[1;5C" .forward-word
bindkey "^[[1;6D" backward-delete-word
bindkey "^[[1;6C" delete-word
# alt+left (on mac) deletes word
bindkey "^[" backward-kill-word
# fn-left
bindkey "^[[H" .backward-word
# fn-right
bindkey "^[[F" .forward-word

# arrow up/down searches in history if line is already started
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

# History Settings (big history for use with many open shells and no dups)
# Different History files for root and standard user
if (( ! EUID )); then
    HISTFILE=$ZSH_CACHE/history_root
else
    HISTFILE=$ZSH_CACHE/history
fi
SAVEHIST=10000
HISTSIZE=12000
setopt share_history append_history extended_history hist_no_store hist_ignore_all_dups hist_ignore_space

zle -C hist-complete complete-word _generic
zstyle ':completion:hist-complete:*' completer _history
bindkey '^X^X' hist-complete

setopt AUTO_CD EXTENDED_GLOB NOMATCH BEEP TRANSIENT_RPROMPT COMPLETE_IN_WORD AUTO_PUSHD PUSHD_IGNORE_DUPS no_clobber
