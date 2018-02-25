if [ -n "$TMUX" ]; then
    # Home/End keys in tmux
    bind '"\e[1~":"\eOH"'
    bind '"\e[4~":"\eOF"'
fi

# vim: ft=sh
