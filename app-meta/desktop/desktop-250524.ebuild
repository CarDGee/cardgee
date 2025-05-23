# Copyright 2023 Gentoo Foundation

# CarDGee Overlay

EAPI=8

DESCRIPTION="Meta package with some applications of my choice"
HOMEPAGE="https://github.com/CarDGee/cardgee"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="amd64"
IUSE="alacritty appimage calendar cava contacts games graphics epiphany gnome gnome-terminal hyprland k3b kcdemu kde kdeconnect keepassxc kitty ktorrent mate-apps maps mpd mpv music nautilus nemo nerd networkmanager nicotine qbittorrent qtile signal sweeper video virt-manager waybar weather webapp"

RDEPEND="

  alacritty? ( x11-terms/alacritty )
  
  appimage? ( app-misc/appimagelauncher-bin )

	app-meta/base
	
  calendar? ( gnome-extra/gnome-calendar )

  cava? ( media-sound/cava )
  
  contacts? ( gnome-extra/gnome-contacts )
  
	dev-libs/libthai

  epiphany? ( www-client/epiphany )
  
  games? ( app-meta/gamedeps )
	
  gnome? ( app-editors/gedit 
  	dev-libs/gjs
  	gnome-base/gnome-core-libs
  	gnome-base/gnome-session
  	gnome-base/gnome-settings-daemon
  	gnome-base/gnome-control-center
  	gnome-base/gnome-shell
  	gnome-extra/gnome-browser-connector
  	gnome-extra/gnome-calculator
  	gnome-extra/gnome-firmware
  	gnome-extra/gnome-tweaks
  	gnome-extra/polkit-gnome
  	mail-client/evolution
  	media-gfx/shotwell
  	media-gfx/simple-scan
  	sys-apps/gnome-disk-utility
  	x11-wm/mutter
  	)
  	
  gnome-terminal? ( x11-terms/gnome-terminal )
  	
  graphics? ( app-meta/graphics )
  
  hyprland? ( gui-apps/swaybg
	gui-libs/xdg-desktop-portal-hyprland
	gui-wm/hyprland
	sys-auth/hyprpolkitagent
	sys-process/bottom
	x11-misc/dunst 
	x11-misc/xdg-user-dirs
	)

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
  
  kitty? ( x11-terms/kitty )

  ktorrent? ( net-p2p/ktorrent )
  	
  maps? ( sci-geosciences/gnome-maps )
  
  mate-apps? ( mate-extra/caja-extensions 
  	app-arch/engrampa 
  	app-editors/pluma  
  	)

	media-fonts/noto-emoji
	media-fonts/ubuntu-font-family

  mpd? ( media-sound/mpd )

  mpv? ( media-video/mpv
  	mpv-plugin/mpv-mpris
	)
  
  music? ( app-meta/music )
  	
  nautilus? ( app-arch/file-roller
  	gnome-base/nautilus )
  	
  nemo? ( gnome-extra/nemo-fileroller )
  	
  nerd? ( media-fonts/nerd-fonts )

  networkmanager? ( net-misc/networkmanager )
  
  nicotine? ( net-p2p/nicotine+ )

  qbittorrent? ( net-p2p/qbittorrent )
  
  qtile? ( x11-wm/qtile
  	dev-python/psutil
  	x11-libs/libnotify
	x11-misc/dunst
	x11-misc/xdg-user-dirs )

  signal? ( net-im/signal-desktop-bin )

  sweeper? ( kde-apps/sweeper )
	
  video? ( app-meta/video )

  virt-manager? ( app-emulation/virt-manager )

  waybar? ( gui-apps/waybar )

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
