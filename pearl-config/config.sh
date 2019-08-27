if [ -n "$TMUX" ]; then
    # set TERM according to the parent terminal's TERM (see etc/tmux.conf)
    case "$TERM" in
        *-256color) export TERM=xterm-256color ;;
        *) export TERM=screen ;;
    esac
fi

# vim: ft=sh
