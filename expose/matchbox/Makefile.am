pngs = \
bottom-left.png   button-close.png     left-side.png   right-side.png  \
bottom-right.png  button-inactive.png  menubg.png      title-bar.png   \
bottom.png        left-edge.png        right-edge.png

themesdir = $(datadir)/themes/expose/matchbox
themes_DATA = theme.xml $(pngs) theme.desktop

EXTRA_DIST = theme.xml $(pngs) theme.desktop.in

theme.desktop: theme.desktop.in
	sed -e "s,PREFIX,@prefix@," theme.desktop.in > theme.desktop

clean:
	rm -f theme.desktop
