#!/bin/sh

rm -fr ipkg-build ipkg-tmp

./configure --prefix=/usr
make clean && make && make DESTDIR=`pwd`/ipkg-tmp install

## matchbox-themes-extra

mkdir -p ipkg-build/usr/share/themes/expose
mkdir -p ipkg-build/usr/share/themes/Industrial
mkdir -p ipkg-build/usr/share/themes/mbcrystal

cp -a ipkg-tmp/usr/share/themes/mbcrystal/matchbox ipkg-build/usr/share/themes/mbcrystal

cp -a ipkg-tmp/usr/share/themes/mbcrystal/background ipkg-build/usr/share/themes/mbcrystal


cp -a ipkg-tmp/usr/share/themes/expose/matchbox ipkg-build/usr/share/themes/expose

cp -a ipkg-tmp/usr/share/themes/expose/background ipkg-build/usr/share/themes/expose

cp -a ipkg-tmp/usr/share/themes/Industrial/matchbox ipkg-build/usr/share/themes/Industrial/

mkdir -p ipkg-build/CONTROL

cat <<STOP  > ./ipkg-build/CONTROL/control
Package: matchbox-themes-extra
Section: x11
Priority: optional
Version: 0.5
Architecture: any
Maintainer: mallum@handhelds.org
Description: 3 Extra Window and desktop decoration themes for matchbox
Source: in package
.
STOP

ipkg-build -o root -g root ./ipkg-build

rm -fr ./ipkg-build/*

## mbcrystal-icons

mkdir -p ipkg-build/usr/share/icons/
cp -a ipkg-tmp/usr/share/icons/mbcrystal ipkg-build/usr/share/icons/

mkdir -p ipkg-build/CONTROL

cat <<STOP  > ./ipkg-build/CONTROL/control
Package: mbcrystal-icon-theme
Section: x11
Priority: optional
Version: 0.2
Architecture: any
Maintainer: mallum@handhelds.org
Description: Icon theme based on KDE crystal icon theme
Source: in package
.
STOP

ipkg-build -o root -g root ./ipkg-build

rm -fr ./ipkg-build/*

## Industrial icons

mkdir -p ipkg-build/usr/share/icons/
cp -a ipkg-tmp/usr/share/icons/Industrial ipkg-build/usr/share/icons/

mkdir -p ipkg-build/CONTROL

cat <<STOP  > ./ipkg-build/CONTROL/control
Package: industrial-icon-theme
Section: x11
Priority: optional
Version: 0.4
Architecture: any
Maintainer: mallum@handhelds.org
Description: Icon theme based on ximian gnome industrial theme
Source: in package
.
STOP

ipkg-build -o root -g root ./ipkg-build

rm -fr ./ipkg-build/*

## Expose icons

mkdir -p ipkg-build/usr/share/icons/
cp -a ipkg-tmp/usr/share/icons/expose ipkg-build/usr/share/icons/

mkdir -p ipkg-build/CONTROL

cat <<STOP  > ./ipkg-build/CONTROL/control
Package: expose-icon-theme
Section: x11
Priority: optional
Version: 0.2
Architecture: any
Maintainer: mallum@handhelds.org
Description: Icon theme based on various panther like themes from the net
Source: in package
.
STOP

ipkg-build -o root -g root ./ipkg-build

rm -fr ./ipkg-build/*

## Expose gtk

mkdir -p ipkg-build/usr/share/themes/expose
cp -a ipkg-tmp/usr/share/themes/expose/gtk-2.0 ipkg-build/usr/share/themes/expose/

mkdir -p ipkg-build/CONTROL

cat <<STOP  > ./ipkg-build/CONTROL/control
Package: expose-gtk2-theme
Section: x11
Priority: optional
Version: 0.2
Architecture: any
Maintainer: mallum@handhelds.org
Description: GTK theme based on various panther like themes from the net
Source: in package
.
STOP

ipkg-build -o root -g root ./ipkg-build

rm -fr ./ipkg-build/*
