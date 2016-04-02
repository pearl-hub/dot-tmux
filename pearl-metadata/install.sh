
post_install() {
    apply "source $PEARL_PKGDIR/tmux.conf" $HOME/.tmux.conf
}

pre_remove() {
    unapply "source $PEARL_PKGDIR/tmux.conf" $HOME/.tmux.conf
}
