
post_install() {
    link tmux "$PEARL_PKGDIR/tmux.conf"
}

post_update() {
    post_install
}

pre_remove() {
    unlink tmux "$PEARL_PKGDIR/tmux.conf"
}
