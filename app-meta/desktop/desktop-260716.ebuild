# Copyright 2023 Gentoo Foundation

# CarDGee Overlay

EAPI=8

DESCRIPTION="Meta package with some applications of my choice"
HOMEPAGE="https://github.com/CarDGee/cardgee"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="amd64"
IUSE="alacritty appimage atril bottom calendar cava contacts deluge games geany graphics epiphany gnome gnome-terminal gnome-text-editor hyprland k3b kcdemu kde kdeconnect keepassxc kid3 kitty ktorrent mate-apps maps mpd mpv music nautilus nemo nerd networkmanager nicotine papers qbittorrent qtile signal sweeper syncthing video virt-manager waybar weather webapp winboat"

RDEPEND="

  alacritty? ( x11-terms/alacritty )
  
  appimage? ( app-misc/appimagelauncher-bin )

	app-meta/base

  atril? ( app-text/atril )
		
  bottom? ( sys-process/bottom )
  	
  calendar? ( gnome-extra/gnome-calendar )

  cava? ( media-sound/cava )
  
  contacts? ( gnome-extra/gnome-contacts )
  
  deluge? ( net-p2p/deluge )
  
	dev-libs/libthai

  epiphany? ( www-client/epiphany )
  
  games? ( app-meta/gamedeps )
  
  geany? ( dev-util/geany )
	
  gnome? ( app-editors/gnome-text-editor
  	app-text/papers
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
  
  gnome-text-editor? ( app-editors/gnome-text-editor )
  	
  graphics? ( app-meta/graphics )
  
  hyprland? ( gui-libs/xdg-desktop-portal-hyprland
	gui-wm/hyprland
	sys-auth/hyprpolkitagent
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
	kde-apps/okular
	)

  kdeconnect? ( kde-misc/kdeconnect )

  keepassxc? ( app-admin/keepassxc )
  
  kid3? ( media-sound/kid3 )

  kitty? ( x11-terms/kitty )

  ktorrent? ( net-p2p/ktorrent )
  	
  maps? ( sci-geosciences/gnome-maps )
  
  mate-apps? ( mate-extra/caja-extensions 
  	app-arch/engrampa 
  	app-editors/pluma
  	sys-apps/xdg-desktop-portal-gtk )

	media-fonts/noto-emoji
	media-fonts/ubuntu-font-family

  mpd? ( media-sound/mpd )

  mpv? ( media-video/mpv
  	mpv-plugin/mpv-mpris
	)
  
  music? ( app-meta/music )
  	
  nautilus? ( app-arch/file-roller
  	dev-python/nautilus-python
  	sys-apps/xdg-desktop-portal-gtk )
  	
  nemo? ( gnome-extra/nemo-fileroller )
  	
  nerd? ( media-fonts/nerd-fonts )

  networkmanager? ( net-misc/networkmanager )
  
  nicotine? ( net-p2p/nicotine+ )
  
  papers? ( app-text/papers ) 

  qbittorrent? ( net-p2p/qbittorrent )
  
  qtile? ( x11-wm/qtile
  	dev-python/psutil
  	gui-apps/wlr-randr
  	gui-libs/xdg-desktop-portal-wlr
  	x11-libs/libnotify
	x11-misc/dunst
	x11-misc/xdg-user-dirs )

  signal? ( net-im/signal-desktop-bin )

  sweeper? ( kde-apps/sweeper )
  
  syncthing? ( net-p2p/syncthing )
	
  video? ( app-meta/video )

  virt-manager? ( app-emulation/virt-manager )

  waybar? ( gui-apps/waybar )

  webapp? ( www-apps/webapp-manager )
	
  weather? ( gnome-extra/gnome-weather )

  winboat? ( app-emulation/winboat-bin
	net-misc/freerdp[X] )
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
