# Copyright 2023 Gentoo Foundation

# CarDGee Overlay

EAPI=8

DESCRIPTION="Meta package providing my selection of applications for music production"
HOMEPAGE="https://github.com/CarDGee/cardgee"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="amd64"
IUSE="ardour audacity carla easyeffects flacon hydrogen lmms mixxx shntool tenacity"

REQUIRED_USE="
  audacity? ( !tenacity )
"

RDEPEND="

  ardour? ( media-sound/ardour )
  
  audacity? ( media-sound/audacity )
  
  carla? ( media-sound/carla )
  
  easyeffects? ( media-sound/easyeffects )
  
  flacon? ( media-sound/flacon )
  
  hydrogen? ( media-sound/hydrogen )
  
  lmms? ( media-sound/lmms )
  
  mixxx? ( media-sound/mixxx )
  
  shntool? ( media-sound/shntool )
  
  tenacity? ( media-sound/tenacity )

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
