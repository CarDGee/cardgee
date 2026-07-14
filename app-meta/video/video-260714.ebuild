# Copyright 2023 Gentoo Foundation

# CarDGee Overlay

EAPI=8

DESCRIPTION="Meta package providing my selection of applications for video production"
HOMEPAGE="https://github.com/CarDGee/cardgee"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="amd64"
IUSE="blender handbrake kdenlive mkvtools obs openshot shotcut vidcutter"

RDEPEND="
  blender? ( media-gfx/blender )
  handbrake? ( media-video/handbrake )
  kdenlive? ( kde-apps/kdenlive )
  mkvtools? ( media-video/mkvtoolnix )
  obs? ( media-video/obs-studio
		media-video/obs-streamfx )
  openshot? ( media-video/openshot ) 
  shotcut? ( media-video/shotcut )
  vidcutter? ( media-video/vidcutter )	
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
