# Copyright 2023 Gentoo Foundation

# CarDGee Overlay

EAPI=8

DESCRIPTION="Meta package providing my selection of applications for music production"
HOMEPAGE="https://github.com/CarDGee/cardgee"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="amd64"
IUSE="ardour audacity carla easyeffects flacon hydrogen lmms mixxx qtractor shntool tenacity"

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

  qtractor? ( media-sound/qtractor )
  
  shntool? ( media-sound/shntool )
  
  tenacity? ( media-sound/tenacity )

"

pkg_postinst() {
	elog
	elog "=========================================================="
	elog "  CarDGee Overlay - ${PN}"
	elog "=========================================================="
	elog
	elog "This is a CarDGee overlay ebuild — a collection of ebuilds"
	elog "for my own personal use, not available on the main portage"
	elog "tree."
	elog
	elog "!! There is no support whatsoever, but if you find a bug,"
	elog "   please file an issue: https://github.com/CarDGee/cardgee/issues"
	elog
}
