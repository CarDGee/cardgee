# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# CarDGee Overlay

EAPI=6

if [[ ${PV} == "9999" ]] ; then
	EGIT_REPO_URI="https://github.com/anestisb/android-simg2img.git"
	inherit git-r3
else
	SRC_URI=""
	KEYWORDS="~amd64"
fi

DESCRIPTION="tool to convert Android sparse images to raw images"
HOMEPAGE=""

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"

src_compile() {
	emake -j 1
}

src_install() {
	dodoc README.md
	dobin append2simg img2simg simg2img simg2simg simg_dump.py
}

pkg_postinst() {
	elog
	elog "This is a cardgee overlay ebuild"
	elog "A collection of ebuilds for my own personal use not available on portage tree."
	elog "There is no support whatsoever, but if you find a bug, please file an issue."
	elog
}
