# Copyright 2023 Gentoo Foundation

# CarDGee Overlay

EAPI=8

DESCRIPTION="Meta package providing my selection of applications for graphic design production"
HOMEPAGE="https://github.com/CarDGee/cardgee"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="amd64"
IUSE="blender geeqie gimp inkscape krita pencil synfig"

RDEPEND="

  blender? ( media-gfx/blender )

  geeqie? ( media-gfx/geeqie )
  
  gimp? ( media-gfx/gimp )
  
  inkscape? ( media-gfx/inkscape )
  
  krita? ( media-gfx/krita )
  
  pencil? ( media-gfx/pencil ) 
  
  synfig? ( media-video/synfigstudio )
  
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
