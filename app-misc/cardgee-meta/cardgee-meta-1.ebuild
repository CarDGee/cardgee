# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# CarDGee Overlay

EAPI=6

DESCRIPTION="Meta package providing GNOME Desktop along with my selection of applications"
HOMEPAGE="https://github.com/CarDGee/cardgee"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	app-admin/sudo
	app-arch/file-roller
	app-arch/lzip
	app-arch/unrar
	app-crypt/seahorse
	app-crypt/veracrypt
	app-editors/gedit
	app-editors/nano
	app-laptop/laptop-mode-tools
	app-misc/screenfetch
	app-portage/eix
	app-portage/gentoolkit
	app-portage/layman
	app-portage/repoman
	dev-libs/libappindicator
	gnome-base/gnome-light
	gnome-extra/gnome-calculator
	gnome-extra/gnome-contacts
	gnome-extra/gnome-system-monitor
	gnome-extra/gnome-tweaks
	mail-client/evolution
	media-fonts/ubuntu-font-family
	media-gfx/eog
	media-gfx/gimp
	media-sound/rhythmbox
	media-video/totem
	net-firewall/ufw
	net-irc/polari
	net-misc/bridge-utils
	net-p2p/deluge
	sys-apps/bleachbit
	sys-apps/mlocate
	sys-apps/usbutils
	sys-block/gparted
	sys-boot/grub
	sys-boot/os-prober
	sys-fs/dislocker
	sys-fs/exfat-utils
	sys-fs/fuse-exfat
	sys-kernel/genkernel-next
	sys-kernel/linux-firmware
	sys-libs/libselinux
	x11-apps/mesa-progs
"

pkg_postinst() {
	elog
	elog "This is a cardgee overlay ebuild"
	elog "A collection of ebuilds for my own personal use not available on portage tree."
	elog "There is no support whatsoever, but if you find a bug, please file an issue."
	elog
	elog "You have installed a personal desktop meta package"
	elog "It may include applications which you don't need or like"
	elog
}
