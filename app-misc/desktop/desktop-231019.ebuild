# Copyright 1999-2023 Gentoo Foundation

# CarDGee Overlay

EAPI=8

DESCRIPTION="Meta package with some applications of my choice"
HOMEPAGE="https://github.com/CarDGee/cardgee"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	app-emulation/virt-manager
	app-misc/appimagelauncher-bin
	app-misc/github-desktop-bin
	media-sound/nuclear-bin
	media-video/mpv
	media-video/obs-studio
	net-im/signal-desktop-bin
	net-misc/yt-dlp
	net-p2p/qbittorrent
	www-apps/webapp-manager
"

pkg_postinst() {
	elog
	elog "This metapackage depends on packages from guru overlay"
	elog "please consult the wiki as how to enable it"
	elog "https://wiki.gentoo.org/wiki/Project:GURU/Information_for_End_Users"
	elog
	elog
	elog "This is a cardgee overlay ebuild"
	elog "A collection of ebuilds for my own personal use not available on portage tree."
	elog "There is no support whatsoever, but if you find a bug, please file an issue."
	elog
}

