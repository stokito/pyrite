#!/bin/sh
mkdir -p "$DESTDIR/usr/share/pyrite/"
cp -r --preserve=mode,timestamps ui "$DESTDIR/usr/share/pyrite/"
mkdir -p "$DESTDIR/usr/lib/python3/dist-packages/"
cp -r --preserve=mode,timestamps pyrite "$DESTDIR/usr/lib/python3/dist-packages/"

# Copy desktop shortcut
mkdir -p "$DESTDIR/usr/share/applications"
cp --preserve=mode,timestamps pyrite.desktop  "$DESTDIR/usr/share/applications"
mkdir -p "$DESTDIR/usr/share/icons/hicolor/scalable/apps/"
cp --preserve=mode,timestamps pyrite.svg "$DESTDIR/usr/share/icons/hicolor/scalable/apps/"
mkdir -p "$DESTDIR/usr/bin/"
install -m u=rwx,g=rx,o=rx ./pyrite.py "$DESTDIR/usr/bin/pyrite"
