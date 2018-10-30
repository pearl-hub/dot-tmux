
post_install() {
    link_to_path "$PEARL_PKGDIR/bin/buzz"
    link tmux "$PEARL_PKGDIR/tmux.conf"
}

post_update() {
    post_install
}

pre_remove() {
    unlink_from_path "$PEARL_PKGDIR/bin/buzz"
    unlink tmux "$PEARL_PKGDIR/tmux.conf"
}
