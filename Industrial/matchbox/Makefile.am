pngs = \
	19x17-closebuttonup.png  bottom-right-6x6.png  title-right-6x23.png \
	bgtile.png               title-bg-tile-16x23.png                    \
	bottom-left-6x6.png      title-left-6x23.png   mbnoapp.png

themesdir = $(datadir)/themes/Industrial/matchbox
themes_DATA = theme.xml $(pngs) theme.desktop

EXTRA_DIST = theme.xml $(pngs) theme.desktop.in

theme.desktop: theme.desktop.in
	sed -e "s,PREFIX,@prefix@," theme.desktop.in > theme.desktop

clean:
	rm -f theme.desktop
