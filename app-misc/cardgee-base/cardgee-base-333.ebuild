# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# CarDGee Overlay

EAPI=6

DESCRIPTION="Meta package providing my selection of applications for my linux desktop"
HOMEPAGE="https://github.com/CarDGee/cardgee"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	app-admin/doas
	app-arch/lz4
	app-arch/lzip
	app-arch/unrar
	app-editors/nano
	app-misc/screenfetch
	app-portage/eix
	app-portage/gentoolkit
	net-firewall/ufw
	net-misc/bridge-utils
	sys-apps/mlocate
	sys-apps/usbutils
	sys-boot/grub
	sys-fs/dislocker
	sys-kernel/genkernel-next
	sys-kernel/linux-firmware
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
