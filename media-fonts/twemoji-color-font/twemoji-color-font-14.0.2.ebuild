# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# CarDGee Overlay

EAPI=8

inherit font

DESCRIPTION="A color and B&W emoji SVG-in-OT font with ZWJ, skin tone mods and country flags"
HOMEPAGE="https://github.com/13rac1/twemoji-color-font"
SRC_URI="https://github.com/13rac1/twemoji-color-font/releases/download/v${PV//_/-}/TwitterColorEmoji-SVGinOT-Linux-${PV//_/-}.tar.gz"
KEYWORDS="~amd64 ~x86"
RESTRICT="mirror"
LICENSE="MIT"
SLOT="0"

RDEPEND="
	media-fonts/ttf-bitstream-vera[X(+)]
	media-fonts/roboto[X(+)]
	media-fonts/noto[X(+)]
"

FONT_SUFFIX="ttf"
DOCS="README.md"
FONT_CONF=( fontconfig/56-twemoji-color.conf )

S="${WORKDIR}/TwitterColorEmoji-SVGinOT-Linux-${PV//_/-}"

pkg_postinst() {
	elog
	elog "This is a cardgee overlay ebuild"
	elog "A collection of ebuilds for my own personal use not available on portage tree."
	elog "There is no support whatsoever, but if you find a bug, please file an issue."
	elog
}
