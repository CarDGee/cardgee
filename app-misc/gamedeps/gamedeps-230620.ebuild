# Copyright 1999-2023 Gentoo Foundation

# CarDGee Overlay

EAPI=8

DESCRIPTION="Meta package with gaming related packages including steam, lutris and dependencies"
HOMEPAGE="https://github.com/CarDGee/cardgee"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="amd64"
IUSE="dxvk"

RDEPEND="
	app-emulation/dxvk
	app-emulation/vkd3d
  dxvk? ( app-emulation/dxvk )
	games-util/esteam
	games-util/gamemode
	games-util/lutris
	games-util/mangohud
	games-util/steam-meta
	games-util/steamtinkerlaunch
	media-libs/glew
  media-libs/vkBasalt
"

pkg_postinst() {
	elog
	elog "This metapackage depends on packages from steam-overlay and guru"
	elog "please consult the wiki as how to enable them"
	elog "https://wiki.gentoo.org/wiki/Steam and https://wiki.gentoo.org/wiki/Project:GURU/Information_for_End_Users"
	elog
	elog
	elog "This is a cardgee overlay ebuild"
	elog "A collection of ebuilds for my own personal use not available on portage tree."
	elog "There is no support whatsoever, but if you find a bug, please file an issue."
	elog
}

