# Copyright 1999-2022 Gentoo Authors

# CarDGee Overlay

EAPI=7

MY_PN="lolcat"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="High-performance implementation of lolcat"
HOMEPAGE="https://github.com/jaseg/lolcat"

if [[ "${PV}" == *9999* ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/jaseg/${MY_PN}.git"
else
	SRC_URI="https://github.com/jaseg/${MY_PN}/archive/v${PV}.tar.gz -> ${MY_P}.tar.gz"
	KEYWORDS="~amd64"
	S="${WORKDIR}/${MY_P}"
fi

RESTRICT="mirror"
LICENSE="WTFPL-2"
SLOT="0"

src_install() {
	einstalldocs

	exeinto "/usr/bin"
	doexe "lolcat"
	doexe "censor"
}

pkg_postinst() {
	elog
	elog "This is a cardgee overlay ebuild"
	elog "A collection of ebuilds for my own personal use not available on portage tree."
	elog "There is no support whatsoever, but if you find a bug, please file an issue."
	elog
}
