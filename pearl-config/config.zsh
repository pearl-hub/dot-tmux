if [ -n "$TMUX" ]; then
    # Home/End keys in tmux
    bindkey "\E[1~" beginning-of-line
    bindkey "\E[4~" end-of-line
fi

# vim: ft=sh
