# enable hook method
autoload add-zsh-hook

# enable and configure vcs_info
autoload -Uz vcs_info
zstyle ':vcs_info:*' stagedstr '%F{green}●'
zstyle ':vcs_info:*' unstagedstr '%F{red}●'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' enable hg git cvs svn
zstyle ':vcs_info:*' formats "%F{black}%r[%F{green}%b%F{black}]:%S %F{red}%u%F{green}%c%F{black} "

function myPrompt () {
    setopt prompt_subst
    local TERMWIDTH
    (( TERMWIDTH = ${COLUMNS} - 1 ))

    PS1=''; RPS1=''
    PS2="↷ %_>"; RPS2=''
    PS3="↷ ?#"; RPS3=''
    PS4="↷ +i>"; RPS3=''

    local PR_SIGN_BEGIN="%B"
    if [[ "`whoami`" == 'root' ]]; then
        PR_SIGN_BEGIN+="☠"
    elif [[ "`whoami`" == 'vagrant' ]]; then
        PR_SIGN_BEGIN+="𝓥"
    elif [[ `uname -s |tr '[:upper:]' '[:lower:]'` == 'darwin' ]]; then
        PR_SIGN_BEGIN+=""
    elif [[ `uname -s |tr '[:upper:]' '[:lower:]'` == *'arch'* ]]; then
        PR_SIGN_BEGIN+="△"
    elif [[ `uname -s |tr '[:upper:]' '[:lower:]'` == *'ubuntu'* ]]; then
        PR_SIGN_BEGIN+="u"
    else
        PR_SIGN_BEGIN+="∴"
    fi
    local PR_SIGN_END="%B◯%b "

    vcs_info

    local PR_MAIN=''
    if [[ "$vcs_info_msg_0_" == "" ]]; then
      PR_MAIN+='%~'
    else
      PR_MAIN+=$vcs_info_msg_0_
    fi

    PS1+=%(?..'[%B%F{9}%?%b]'$'\n')
    PS1+=$PR_SIGN_BEGIN' '
    PS1+=$PR_MAIN' '
    PS1+=$PR_SIGN_END

}
add-zsh-hook precmd myPrompt
