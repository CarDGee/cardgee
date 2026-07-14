# Copyright 1999-2025 Gentoo Foundation

# CarDGee Overlay

EAPI=8

DESCRIPTION="Meta package with gaming related packages including steam, lutris and dependencies"
HOMEPAGE="https://github.com/CarDGee/cardgee"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="amd64"
IUSE="bottles cemu dxvk epic gamescope glew lutris mangohud sc-controller steamtinkerlaunch suyu vkbasalt vkd3d wine"

RDEPEND="
  
  bottles? ( app-emulation/bottles )

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
	elog "This metapackage depends on packages from guru overlay"
	elog "please consult the wiki as how to enable it"
	elog "https://wiki.gentoo.org/wiki/Project:GURU/Information_for_End_Users"
}
