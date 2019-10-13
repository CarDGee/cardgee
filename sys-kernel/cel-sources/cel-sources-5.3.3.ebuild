# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# CarDGee Overlay

EAPI=6
ETYPE="sources"
KEYWORDS="~amd64"

IUSE=""

inherit eutils kernel-2
detect_version

DESCRIPTION="cel-sources is a fork of the linux kernel with some extra features including Gentoo's genpatches"

SRC_URI="https://github.com/CarDGee/linux/archive/5.3.3-cel.tar.gz"

src_unpack() {
	tar -xf ${DISTDIR}/5.3.3-cel.tar.gz
}


pkg_setup(){
	ewarn "Be carefull!! You are about to install unsuported kernel sources."
	ewarn "Use them at your own risk and don't bite us"
	ewarn "If your system explodes, tries to take over the world,"
	ewarn "Or causes nuclear holocaust"
	kernel-2_pkg_setup
	echo 
	elog "This is a cardgee overlay ebuild"
	elog "A collection of ebuilds for my own personal use not available on portage tree."
	elog "There is no support whatsoever, but if you find a bug, please file an issue."
	echo	
}

src_prepare() {
	default
	kernel-2_src_prepare
}

pkg_postinst() {
	kernel-2_pkg_postinst
	optfeature "Userspace KSM helper" sys-process/uksmd
}
