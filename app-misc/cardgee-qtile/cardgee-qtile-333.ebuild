# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# CarDGee Overlay

EAPI=6

DESCRIPTION="Meta package providing qtile wm along with my selection of applications"
HOMEPAGE="https://github.com/CarDGee/cardgee"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	app-misc/cardgee-base
	app-misc/khal
	dev-lang/rust-bin
	dev-python/keyring
	dev-python/psutil
	dev-python/python-dateutil
	dev-python/python-mpd
	dev-python/setproctitle
	dev-python/pyxdg
	media-fonts/fontawesome
	media-fonts/noto
	media-fonts/noto-emoji
	media-fonts/ubuntu-font-family
	media-gfx/feh
	x11-apps/setxkbmap
	x11-base/xorg-server
	x11-misc/dmenu
	x11-misc/numlockx
	x11-terms/alacritty
	x11-wm/qtile
"

pkg_postinst() {
	elog
	elog "This is a cardgee overlay ebuild"
	elog "A collection of ebuilds for my own personal use not available on portage tree."
	elog "There is no support whatsoever, but if you find a bug, please file an issue."
	elog
	elog "You have installed a personal qtile meta package"
	elog "It may include applications which you don't need or like"
	elog
}

