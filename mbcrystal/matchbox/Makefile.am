pngs =  buttsmallmaxdown.png  next.png       topleft.png \
	bottom-tile.png buttsmallmindown.png  panelbg.png    topright.png \
	bottomleft.png  close.png             prev.png       toptile.png  \
	bottomright.png         dialog-side.png       theme.desktop      \
	buttsmallclosedown.png  minimise.png  noappicon.png 

themesdir = $(datadir)/themes/mbcrystal/matchbox
themes_DATA = theme.xml $(pngs) theme.desktop

EXTRA_DIST = theme.xml $(pngs) theme.desktop.in

theme.desktop: theme.desktop.in
	sed -e "s,PREFIX,@prefix@," theme.desktop.in > theme.desktop

clean:
	rm -f theme.desktop
