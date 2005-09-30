pngs = \
bottom-left.png \
bottom-midtile.png \
bottom-right.png \
close-button-down.png \
close-button.png \
left.png \
midtile.png \
paneldiv.png \
panelleft.png \
panelright.png \
paneltile.png \
right.png 

themesdir = $(datadir)/themes/Clearlooks/matchbox
themes_DATA = theme.xml $(pngs) theme.desktop

EXTRA_DIST = theme.xml $(pngs) theme.desktop.in

theme.desktop: theme.desktop.in
	sed -e "s,PREFIX,@prefix@," theme.desktop.in > theme.desktop

clean:
	rm -f theme.desktop
