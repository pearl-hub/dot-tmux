
post_install() {
    link tmux "$PEARL_PKGDIR/tmux.conf"
}

pre_remove() {
    unlink tmux "source $PEARL_PKGDIR/tmux.conf"
}
