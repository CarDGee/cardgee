# Copyright 1999-2023 Gentoo Foundation

# CarDGee Overlay

EAPI=8

DESCRIPTION="Meta package with gaming related packages including steam, lutris and dependencies"
HOMEPAGE="https://github.com/CarDGee/cardgee"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="amd64"
IUSE="cemu dxvk epic gamescope glew lutris mangohud sc-controller steamtinkerlaunch suyu vkbasalt vkd3d wine"

RDEPEND="
  cemu? ( app-emulation/cemu )
  
  dxvk? ( app-emulation/dxvk )
  
  	dev-util/vulkan-tools
  	
  epic? ( games-util/heroic-bin )
  
	games-util/esteam
	games-util/gamemode
	
  gamescope? ( gui-wm/gamescope )
  
  glew? ( media-libs/glew )
  
  lutris? ( games-util/lutris )
  
  mangohud? ( games-util/mangohud )
  
	games-util/steam-launcher
	
  sc-controller? ( games-util/sc-controller )
	
  steamtinkerlaunch? ( games-util/steamtinkerlaunch )
	
  suyu? ( app-emulation/suyu )
  
  vkbasalt? ( media-gfx/vkBasalt )
  
  vkd3d? ( app-emulation/vkd3d )
  
  wine? ( app-emulation/wine-staging )
  
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

