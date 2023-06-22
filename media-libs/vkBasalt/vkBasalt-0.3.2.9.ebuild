# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# CarDGee Overlay

EAPI=8

inherit meson

DESCRIPTION="A vulkan post processing layer for linux"
HOMEPAGE="https://github.com/DadSchoorse/vkBasalt"
SRC_URI="https://github.com/DadSchoorse/vkBasalt/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="ZLIB"
SLOT="0"
KEYWORDS="~amd64"

# No tests
RESTRICT="test"

CDEPEND="x11-libs/libX11"
DEPEND="
	${CDEPEND}
	dev-util/spirv-headers
	dev-util/vulkan-headers
"
RDEPEND="${CDEPEND}"
BDEPEND="dev-util/glslang"

PATCHES=( "${FILESDIR}/fix-gcc-13-header.patch" )


pkg_postinst() {
	elog
	elog "This is a cardgee overlay ebuild"
	elog "A collection of ebuilds for my own personal use not available on portage tree."
	elog "There is no support whatsoever, but if you find a bug, please file an issue."
	elog
}
