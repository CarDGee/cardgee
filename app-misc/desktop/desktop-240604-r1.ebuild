# Copyright 2023 Gentoo Foundation

# CarDGee Overlay

EAPI=8

DESCRIPTION="Meta package with some applications of my choice"
HOMEPAGE="https://github.com/CarDGee/cardgee"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="amd64"
IUSE="appimage calendar contacts games graphics epiphany gnome k3b kcdemu kde kdeconnect keepassxc ktorrent maps mpv music nautilus nemo nerd qbittorrent signal sweeper video virt-manager weather webapp"

RDEPEND="
  appimage? ( app-misc/appimagelauncher-bin )

  app-misc/base
	
  calendar? ( gnome-extra/gnome-calendar )
  
  contacts? ( gnome-extra/gnome-contacts )

  epiphany? ( www-client/epiphany )
  
  games? ( app-misc/gamedeps )
	
  gnome? ( app-editors/gedit 
  	dev-libs/gjs
  	gnome-base/gnome-core-libs
  	gnome-base/gnome-session
  	gnome-base/gnome-settings-daemon
  	gnome-base/gnome-control-center
  	gnome-base/gnome-shell
  	gnome-extra/gnome-browser-connector
  	gnome-extra/gnome-calculator
  	gnome-base/dconf-editor
  	gnome-extra/gdm-settings
  	gnome-extra/gnome-firmware
  	gnome-extra/gnome-tweaks
  	gnome-extra/polkit-gnome
  	mail-client/evolution
  	media-fonts/cantarell
  	media-gfx/shotwell
  	sys-apps/gnome-disk-utility
  	x11-wm/mutter
  	x11-terms/gnome-terminal
  	)
  	
  graphics? ( app-production/graphics )

  k3b? ( kde-apps/k3b )

  kcdemu? ( app-cdr/kcdemu )

  kde? ( kde-plasma/plasma-meta
	kde-apps/ark
	kde-apps/dolphin
	kde-apps/kcalc
	kde-apps/konsole
	kde-apps/kwrite
	)

  kdeconnect? ( kde-misc/kdeconnect )

  keepassxc? ( app-admin/keepassxc )

  ktorrent? ( net-p2p/ktorrent )
  	
  maps? ( sci-geosciences/gnome-maps )

  mpv? ( media-video/mpv )
  
  music? ( app-production/music )
  	
  nautilus? ( app-arch/file-roller
  	dev-python/nautilus-python )
  	
  nemo? ( gnome-extra/nemo-fileroller )
  	
  nerd? ( media-fonts/nerd-fonts )

	net-misc/yt-dlp

  qbittorrent? ( net-p2p/qbittorrent )

  signal? ( net-im/signal-desktop-bin )

  sweeper? ( kde-apps/sweeper )
	
  video? ( app-production/video )

  virt-manager? ( app-emulation/virt-manager )

  webapp? ( www-apps/webapp-manager )
	
  weather? ( gnome-extra/gnome-weather )
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
