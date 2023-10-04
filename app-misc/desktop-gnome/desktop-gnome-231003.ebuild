# Copyright 2023 Gentoo Foundation

# CarDGee Overlay

EAPI=8

DESCRIPTION="Meta package providing my selection of applications for Gnome DE"
HOMEPAGE="https://github.com/CarDGee/cardgee"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	app-arch/file-roller
	app-editors/gedit
	app-emulation/virt-manager
	app-misc/github-desktop-bin
	app-text/evince
	dev-python/nautilus-python
	gnome-base/gnome-control-center
	gnome-base/gnome-session
	gnome-base/gnome-shell
	gnome-base/gvfs
	gnome-base/nautilus
	gnome-extra/gnome-browser-connector
	gnome-extra/gnome-calculator
	gnome-extra/gnome-tweaks
	mail-client/evolution
	media-fonts/nerd-fonts
	media-video/mpv
	net-wireless/gnome-bluetooth
	sys-apps/gnome-disk-utility
	www-apps/webapp-manager
	x11-terms/gnome-terminal
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
