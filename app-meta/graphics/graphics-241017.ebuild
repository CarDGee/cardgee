# Copyright 2023 Gentoo Foundation

# CarDGee Overlay

EAPI=8

DESCRIPTION="Meta package providing my selection of applications for graphic design production"
HOMEPAGE="https://github.com/CarDGee/cardgee"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="amd64"
IUSE="blender gimp inkscape krita pencil synfig"

RDEPEND="

  blender? ( media-gfx/blender )
  
  gimp? ( media-gfx/gimp )
  
  inkscape? ( media-gfx/inkscape )
  
  krita? ( media-gfx/krita )
  
  pencil? ( media-gfx/pencil ) 
  
  synfig? ( media-video/synfigstudio )
  
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
