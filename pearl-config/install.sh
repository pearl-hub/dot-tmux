
post_install() {
    link_to_path "$PEARL_PKGDIR/bin/buzz"
    link tmux "$PEARL_PKGDIR/tmux.conf"

    if ask "Do you want to setup Tmux status bar for dot-tmux?" "N"
    then
        link tmux "$PEARL_PKGDIR/tmux-statusbar-common.conf"

        if osx_detect
        then
            link tmux "$PEARL_PKGDIR/tmux-statusbar-osx.conf"
        else
            link tmux "$PEARL_PKGDIR/tmux-statusbar-linux.conf"
        fi
    else
        _unlink_statusbar
    fi
}

post_update() {
    post_install
}

pre_remove() {
    unlink_from_path "$PEARL_PKGDIR/bin/buzz"
    unlink tmux "$PEARL_PKGDIR/tmux.conf"
    _unlink_statusbar
}

_unlink_statusbar() {
    unlink tmux "$PEARL_PKGDIR/tmux-statusbar-common.conf"
    unlink tmux "$PEARL_PKGDIR/tmux-statusbar-linux.conf"
    unlink tmux "$PEARL_PKGDIR/tmux-statusbar-osx.conf"
}

