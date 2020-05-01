TERMUX_SUBPKG_DESCRIPTION="Texlive's roboto package"
TERMUX_SUBPKG_INCLUDE=$($TERMUX_PKG_BUILDER_DIR/parse_tlpdb.py roboto $TERMUX_PKG_TMPDIR/texlive.tlpdb)
termux_step_create_subpkg_debscripts() {
	echo "#lsTERMUX_PREFIX/bin/sh" > postinst
	echo mktexlsr >> postinst
}