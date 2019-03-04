
Debian
====================
This directory contains files used to package hrgoldd/hrgold-qt
for Debian-based Linux systems. If you compile hrgoldd/hrgold-qt yourself, there are some useful files here.

## hrgold: URI support ##


hrgold-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install hrgold-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your hrgold-qt binary to `/usr/bin`
and the `../../share/pixmaps/hrgold128.png` to `/usr/share/pixmaps`

hrgold-qt.protocol (KDE)

