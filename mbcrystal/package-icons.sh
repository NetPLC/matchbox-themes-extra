#!/bin/sh

rm -fr icons-build
mkdir -p icons-build/usr/share/icons/mbcrystal
cp icons/* icons-build/usr/share/icons/mbcrystal/

mkdir -p icons-build/CONTROL

cat <<STOP  > ./icons-build/CONTROL/control
Package: mbcrystal-icon-theme
Section: x11
Priority: optional
Version: 0.1
Architecture: any
Maintainer: mallum@handhelds.org
Description: Icon theme based on popular KDE crystal theme
Source: in package
.
STOP

ipkg-build -o root -g root ./icons-build