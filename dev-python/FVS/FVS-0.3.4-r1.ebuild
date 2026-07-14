# Copyright 2022-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# CarDGee Overlay

EAPI=8

PYPI_NO_NORMALIZE=y
DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..13} )
inherit distutils-r1 pypi

DESCRIPTION="File Versioning System with hash comparison"
HOMEPAGE="https://github.com/mirkobrombin/FVS/
	https://pypi.org/project/fvs/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"

# No tests
RESTRICT="test"

RDEPEND="dev-python/orjson[${PYTHON_USEDEP}]"

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
