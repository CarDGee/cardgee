# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# CarDGee Overlay

EAPI="6"

EGIT_REPO_URI="https://github.com/dell/dkms"
EGIT_COMMIT=08dd4e13aceae4f37120aee7d8d55c8e22987740

inherit eutils git-r3

DESCRIPTION="Dynamic Kernel Module Support"
HOMEPAGE="https://github.com/dell/dkms"
LICENSE="GPL-2"
DEPEND=""
KEYWORDS="~amd64 ~x86"
SLOT="0"

src_install () {
	sed -i "s:prepare-all:prepare:g" ./dkms || die
	dosbin dkms
	dosbin dkms_mkkerneldoth

	keepdir /var/lib/dkms
	insinto /var/lib/dkms
	doins dkms_dbversion

	keepdir /etc/dkms
	insinto /etc/dkms
	newins dkms_framework.conf framework.conf
	doins template-dkms-mkrpm.spec

	doman dkms.8
	dodoc AUTHORS sample.conf sample.spec
}

pkg_postinst(){
	echo 
	elog "This is a cardgee overlay ebuild"
	elog "A collection of ebuilds for my own personal use not available on portage tree."
	elog "There is no support whatsoever, but if you find a bug, please file an issue."
	echo
}
