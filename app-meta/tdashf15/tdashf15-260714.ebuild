# Copyright 2023 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# CarDGee Overlay

EAPI=6

DESCRIPTION="Meta package for packages related to the asus tuf dash f15 laptop"
HOMEPAGE="https://github.com/CarDGee/cardgee"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="amd64"
IUSE="asusctl"

RDEPEND="
	app-crypt/sbctl
	media-libs/libva-intel-media-driver
	sys-firmware/intel-microcode
  asusctl? ( sys-power/asusctl )
"

pkg_postinst() {
	elog
	elog "=========================================================="
	elog "  CarDGee Overlay - ${PN}"
	elog "=========================================================="
	elog
	elog "This is a CarDGee overlay ebuild — a collection of ebuilds"
	elog "for my own personal use, not available on the main portage"
	elog "tree."
	elog
	elog "!! There is no support whatsoever, but if you find a bug,"
	elog "   please file an issue: https://github.com/CarDGee/cardgee/issues"
	elog
}
