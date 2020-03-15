# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# CarDGee Overlay

EAPI=6

DESCRIPTION="Meta package providing SwayWM along with my selection of applications"
HOMEPAGE="https://github.com/CarDGee/cardgee"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-lang/rust-bin
	gui-apps/mako
	gui-apps/waybar
	gui-wm/sway
	media-fonts/fontawesome
	media-fonts/ubuntu-font-family
	media-sound/pulsemixer
	net-misc/networkmanager
	x11-terms/alacritty
"

pkg_postinst() {
	elog
	elog "This is a cardgee overlay ebuild"
	elog "A collection of ebuilds for my own personal use not available on portage tree."
	elog "There is no support whatsoever, but if you find a bug, please file an issue."
	elog
	elog "You have installed a personal SwayWM meta package"
	elog "It may include applications which you don't need or like"
	elog
}

