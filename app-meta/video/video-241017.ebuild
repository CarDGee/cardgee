# Copyright 2023 Gentoo Foundation

# CarDGee Overlay

EAPI=8

DESCRIPTION="Meta package providing my selection of applications for video production"
HOMEPAGE="https://github.com/CarDGee/cardgee"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="amd64"
IUSE="blender handbrake kdenlive obs openshot shotcut vidcutter"

RDEPEND="
  blender? ( media-gfx/blender )
  handbrake? ( media-video/handbrake )
  kdenlive? ( kde-apps/kdenlive )
  obs? ( media-video/obs-studio
		media-video/obs-streamfx )
  openshot? ( media-video/openshot ) 
  shotcut? ( media-video/shotcut )
  vidcutter? ( media-video/vidcutter )	
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
