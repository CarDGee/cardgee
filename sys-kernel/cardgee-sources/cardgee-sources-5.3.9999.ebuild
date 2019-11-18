# Copyright 1999-2018 Gentoo Foundation
# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# CarDGee Overlay

EAPI=6

KEYWORDS="~amd64"

K_PREPATCHED="yes"
UNIPATCH_STRICTORDER="yes"
K_SECURITY_UNSUPPORTED="1"
CKV="${PV/99/}"

ETYPE="sources"

EGIT_BRANCH="${PV/.9999/}/cardgee"
EGIT_REPO_URI="https://github.com/CarDGee/linux.git"

inherit kernel-2 git-r3
detect_version

K_NOSETEXTRAVERSION="don't_set_it"
DESCRIPTION="cardgee-sources is a fork of the linux kernel with some extra features including ck patchset and CEL optimizations"
HOMEPAGE="https://github.com/CarDGee"

IUSE=""

KEYWORDS=""

EGIT_CHECKOUT_DIR="${WORKDIR}/linux-${KV_FULL}"

pkg_setup(){
	ewarn "Be carefull!! You are about to install unsuported live kernel sources."
	ewarn "Use them at your own risk and don't bite us "
	ewarn "If your system explodes, tries to take over the world,"
	ewarn "Or causes nuclear holocaust"
	echo 
	elog "This is a cardgee overlay ebuild"
	elog "A collection of ebuilds for my own personal use not available on portage tree."
	elog "There is no support whatsoever, but if you find a bug, please file an issue."
	echo
	kernel-2_pkg_setup
}
