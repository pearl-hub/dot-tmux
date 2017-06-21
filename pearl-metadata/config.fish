set -x DOT_TMUX_PKGDIR $PEARL_PKGDIR

if [ -n "$TMUX" ]
    # set TERM according to the parent terminal's TERM (see etc/tmux.conf)
    switch $TERM
        case '*-256color'
            set -x TERM xterm-256color
        case '*'
            set -x TERM screen
    end
end

# vim: ft=sh
