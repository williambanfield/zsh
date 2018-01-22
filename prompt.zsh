# enable hook method
autoload add-zsh-hook

# enable and configure vcs_info
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable hg git cvs svn
zstyle ':vcs_info:*' formats ' %r[%B%F{6}%b%f%%b]:%S'

function myPrompt () {
    setopt prompt_subst

    local FAIL=%(?..〈%B%F{1}%?%f%b〉)

    local DATE='[%B%F{green}%D{%a %H:%M}%f%b]'

    local VENV
    if [[ $VIRTUAL_ENV ]]; then
      VENV="(%F{3}`basename $VIRTUAL_ENV`%f) "
    fi

    vcs_info
    local MAIN
    if [[ $vcs_info_msg_0_ ]]; then
      MAIN=$vcs_info_msg_0_
    else
      MAIN=' %~'
    fi

    local SIGN
    if true; then
        SIGN=◯
    elif [[ `whoami` == 'root' ]]; then
        SIGN=%
    elif [[ `whoami` == 'vagrant' ]]; then
        SIGN=∇
    elif [[ `uname -s |tr '[:upper:]' '[:lower:]'` == 'darwin' ]]; then
        SIGN=
    elif [[ `uname -a |tr '[:upper:]' '[:lower:]'` == *'ubuntu'* ]]; then
        SIGN=u
    elif [[ `uname -a |tr '[:upper:]' '[:lower:]'` == *'arch'* ]]; then
        SIGN=△
    else
        SIGN=∴
    fi
    SIGN="%B$SIGN%b "


    PS1="$FAIL$DATE$MAIN $SIGN$VENV"
}
add-zsh-hook precmd myPrompt

TMOUT=2
TRAPALRM() {
    zle reset-prompt
}
