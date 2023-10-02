# Copyright 1999-2023 Gentoo Foundation

# CarDGee Overlay

EAPI=8

DESCRIPTION="Meta package providing my selection of applications for my linux desktop"
HOMEPAGE="https://github.com/CarDGee/cardgee"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	app-admin/doas
	app-arch/lzip
	app-arch/unrar
	app-portage/eix
	app-portage/gentoolkit
	app-shells/ohmyzsh
	dev-vcs/git
	net-firewall/ufw
	sys-apps/plocate
	sys-apps/usbutils
	sys-devel/bc
	sys-devel/mold
	sys-fs/dislocker
	sys-fs/dosfstools
	sys-fs/exfatprogs
	sys-fs/f2fs-tools
	sys-fs/ntfs3g
	sys-fs/xfsprogs
	sys-kernel/genkernel
	sys-kernel/linux-firmware
	sys-kernel/modprobed-db
	sys-process/schedtool
"

pkg_postinst() {
	elog
	elog "This is a cardgee overlay ebuild"
	elog "A collection of ebuilds for my own personal use not available on portage tree."
	elog "There is no support whatsoever, but if you find a bug, please file an issue."
	elog
	elog "You have installed a personal meta package"
	elog "It may include applications which you don't need or like"
	elog
}
