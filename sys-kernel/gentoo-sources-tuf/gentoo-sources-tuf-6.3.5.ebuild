# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# CarDGee Overlay

EAPI=8
ETYPE="sources"

K_EXP_GENPATCHES_NOUSE="1"
K_WANT_GENPATCHES="base extras"
K_GENPATCHES_VER="8"

inherit kernel-2 optfeature
detect_version

DESCRIPTION="Full sources including the Gentoo and CachyOs patchset to improve performance and other aspects."
HOMEPAGE="https://github.com/CachyOS/linux-cachyos https://dev.gentoo.org/~mpagano/genpatches"
SRC_URI="${KERNEL_URI} ${GENPATCHES_URI}"

LICENSE="GPL-3"
SLOT="stable"
KEYWORDS="amd64"
IUSE="+bore-eevdf"
REQUIRED_USE=""

DEPEND="virtual/linux-sources"
RDEPEND="${DEPEND}"
BDEPEND=""

# appending kernel version (-tuf) and setting source dir
EXTRAVERSION="-gentoo-tuf"
[[ ${PR} != "r0" ]] && \
	KV="${PV}-${PR}${EXTRAVERSION}" || \
	KV="${PV}${EXTRAVERSION}"
KV_FULL="${KV}"
S="${WORKDIR}/linux-${KV}"

src_prepare() {

	eapply "${FILESDIR}/${KV_MAJOR}.${KV_MINOR}/all/0001-cachyos-base-all.patch"

	if use bore-eevdf; then
		eapply "${FILESDIR}/${KV_MAJOR}.${KV_MINOR}/sched/0001-EEVDF.patch"
		eapply "${FILESDIR}/${KV_MAJOR}.${KV_MINOR}/sched/0001-bore-eevdf.patch"
		cp "${FILESDIR}/${KV_MAJOR}.${KV_MINOR}/config-x86_64-bore-eevdf" .config || die
	fi


	eapply_user

}

pkg_postinst() {
	elog
	elog "This is a cardgee overlay ebuild"
	elog "A collection of ebuilds for my own personal use not available on portage tree."
	elog "There is no support whatsoever, but if you find a bug, please file an issue."
	elog

}

