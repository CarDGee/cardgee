# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# CarDGee Overlay

EAPI=6

DESCRIPTION="Meta package providing LineageOS build environment"
HOMEPAGE="https://lineageos.org"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	app-arch/lz4
	app-arch/lzop
	dev-util/aosp-devel-meta
	media-gfx/imagemagick
	media-gfx/pngcrush
"

pkg_postinst() {
	elog
	elog "This is a cardgee overlay ebuild"
	elog "A collection of ebuilds for my own personal use not available on portage tree."
	elog "There is no support whatsoever, but if you find a bug, please file an issue."
	elog
}
