# Copyright 1999-2020 Gentoo Foundation
# CarDGee Overlay

EAPI=6

DESCRIPTION="Meta package providing my selection of applications for my linux desktop"
HOMEPAGE="https://github.com/CarDGee/cardgee"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	app-arch/lz4
	app-arch/lzip
	app-arch/unrar
	app-backup/mkstage4
	app-crypt/p11-kit
	app-editors/vim
	app-misc/screenfetch
	app-portage/eix
	app-portage/gentoolkit
	dev-vcs/git
	net-firewall/ufw
	net-misc/bridge-utils
	net-misc/networkmanager
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
