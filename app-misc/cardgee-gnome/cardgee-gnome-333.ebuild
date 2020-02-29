# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# CarDGee Overlay

EAPI=6

DESCRIPTION="Meta package providing GNOME Desktop along with my selection of applications"
HOMEPAGE="https://github.com/CarDGee/cardgee"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	app-arch/file-roller
	app-crypt/seahorse
	app-editors/gedit
	dev-libs/libappindicator
	gnome-base/gnome-control-center
	gnome-base/gnome-shell
	gnome-base/gnome-session
	gnome-base/gvfs
	gnome-base/nautilus
	gnome-extra/gnome-calculator
	gnome-extra/gnome-contacts
	gnome-extra/gnome-system-monitor
	gnome-extra/gnome-tweaks
	mail-client/evolution
	media-fonts/ubuntu-font-family
	media-gfx/eog
	media-gfx/gimp
	media-sound/rhythmbox
	media-video/totem
	net-irc/polari
	sys-block/gparted
	x11-terms/gnome-terminal
	x11-wm/mutter
"

pkg_postinst() {
	elog
	elog "This is a cardgee overlay ebuild"
	elog "A collection of ebuilds for my own personal use not available on portage tree."
	elog "There is no support whatsoever, but if you find a bug, please file an issue."
	elog
	elog "You have installed a personal desktop meta package"
	elog "It may include applications which you don't need or like"
	elog
}
