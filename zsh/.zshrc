# command not found
command_not_found_handler() {
    if cmd.exe /c "(where $1 || (help $1 |findstr /V Try)) >nul 2>nul && ($* || exit 0)"; then
        return $?
    else
        [[ -x /usr/lib/command-not-found ]] || return 1
        /usr/lib/command-not-found --no-failure-msg -- ${1+"$1"} && :
    fi
}

# alias

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'