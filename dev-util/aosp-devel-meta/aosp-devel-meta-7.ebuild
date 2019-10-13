# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# CarDGee Overlay

EAPI=6

DESCRIPTION="Meta package providing AOSP build environment"
HOMEPAGE="https://source.android.com/source/initializing"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	app-crypt/gnupg
	app-arch/zip[-natspec]
	app-arch/unzip
	dev-java/icedtea-bin
	dev-libs/libxslt
	dev-libs/libxml2
	dev-util/android-tools
	dev-util/ccache
	dev-util/gperf
	dev-vcs/git
	media-libs/libsdl
	media-libs/mesa
	net-misc/curl
	net-misc/rsync
	sys-devel/bc
	sys-devel/bison
	sys-devel/flex
	sys-devel/gcc[cxx]
	sys-libs/ncurses:5[abi_x86_32,tinfo]
	sys-libs/readline[abi_x86_32]
	sys-libs/zlib[abi_x86_32]
	sys-process/schedtool
	sys-fs/squashfs-tools
	x11-base/xorg-proto
	x11-libs/libX11
	x11-libs/wxGTK:3.0
"

pkg_postinst() {
	elog
	elog "This is a cardgee overlay ebuild"
	elog "A collection of ebuilds for my own personal use not available on portage tree."
	elog "There is no support whatsoever, but if you find a bug, please file an issue."
	elog
}
