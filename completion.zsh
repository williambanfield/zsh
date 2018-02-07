autoload -U compinit
compinit
zmodload -i zsh/complist

# allow one error for every three characters typed
zstyle ':completion:*:approximate:'    max-errors 'reply=( $((($#PREFIX+$#SUFFIX)/3 )) numeric )'

# start menu completion only if it could find no unambiguous initial string
zstyle ':completion:*:correct:*'       insert-unambiguous true
zstyle ':completion:*:corrections'     format $'\e[01;33m -- %d -- \e[00;00m'
zstyle ':completion:*:correct:*'       original true

# activate color-completion
zstyle ':completion:*:default'         list-colors ${(s.:.)LS_COLORS}

# format on completion
zstyle ':completion:*:descriptions'    format $'\e[01;33m -- %d -- \e[00;00m'

zstyle ':completion:*:expand:*'        tag-order all-expansions
zstyle ':completion:*:history-words'   list false
zstyle ':completion:*:history-words'   menu yes
zstyle ':completion:*:history-words'   remove-all-dups yes
zstyle ':completion:*:history-words'   stop yes

zstyle ':completion:*'                 matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:matches'         group 'yes'
zstyle ':completion:*'                 group-name ''
zstyle ':completion:*'                 menu select=5
zstyle ':completion:*:messages'        format $'\e[01;35m -- %d -- \e[00;00m'
zstyle ':completion:*:options'         auto-description '%d'
zstyle ':completion:*:options'         description 'yes'

# on processes completion complete all user processes
zstyle ':completion:*:processes'       command 'ps -au$USER'

# offer indexes before parameters in subscripts
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters

zstyle ':completion:*'                 verbose true
zstyle ':completion:*:-command-:*:'    verbose false

zstyle ':completion:*:warnings'        format $'\e[01;31m -- No Matches Found -- \e[00;00m'
zstyle ':completion:correct:'          prompt 'correct to: %e'

# Ignore completion functions for commands you don't have:
zstyle ':completion::(^approximate*):*:functions' ignored-patterns '_*'

zstyle ':completion:*:processes-names' command 'ps c -u ${USER} -o command | uniq'
zstyle ':completion:*:manuals'    separate-sections true
zstyle ':completion:*:manuals.*'  insert-sections   true
zstyle ':completion:*:man:*'      menu yes select
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin
zstyle ':completion:*' special-dirs true
zstyle ':completion:*' rehash true

zstyle ':completion:*' users lucasem root

## correction
setopt correct
zstyle -e ':completion:*' completer '
    if [[ $_last_try != "$HISTNO$BUFFER$CURSOR" ]] ; then
        _last_try="$HISTNO$BUFFER$CURSOR"
        reply=(_complete _match _ignored _prefix _files)
    else
        if [[ $words[1] == (rm|mv) ]] ; then
            reply=(_complete _files)
        else
            reply=(_oldlist _expand _complete _ignored _correct _approximate _files)
        fi
    fi'

zstyle ':completion:*'            use-cache  yes
zstyle ':completion:*:complete:*' cache-path "$ZSH_CACHE"

# host completion
[[ -r ~/.ssh/config ]] && _ssh_config_hosts=(${${(s: :)${(ps:\t:)${${(@M)${(f)"$(<$HOME/.ssh/config)"}:#Host *}#Host }}}:#*[*?]*}) || _ssh_config_hosts=()
[[ -r ~/.ssh/known_hosts ]] && _ssh_hosts=(${(R)${${${${(f)"$(<$HOME/.ssh/known_hosts)"}:#[\|]*}%%\ *}%%,*}:#[0-9]*}) || _ssh_hosts=()
hosts=(
    $(hostname)
    $_ssh_config_hosts[@]
    $_ssh_hosts[@]
    localhost
)
zstyle ':completion:*:hosts' hosts $hosts
