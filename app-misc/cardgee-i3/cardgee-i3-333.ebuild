# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# CarDGee Overlay

EAPI=6

DESCRIPTION="Meta package providing i3wm along with my selection of applications"
HOMEPAGE="https://github.com/CarDGee/cardgee"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-lang/rust-bin
	lxde-base/lxappearance
	media-gfx/feh
	media-sound/volumeicon
	x11-apps/setxkbmap
	x11-misc/compton
	x11-misc/i3blocks
	x11-misc/rofi
	x11-terms/alacritty
	x11-wm/i3-gaps
"

pkg_postinst() {
	elog
	elog "This is a cardgee overlay ebuild"
	elog "A collection of ebuilds for my own personal use not available on portage tree."
	elog "There is no support whatsoever, but if you find a bug, please file an issue."
	elog
	elog "You have installed a personal i3wm meta package"
	elog "It may include applications which you don't need or like"
	elog
}

