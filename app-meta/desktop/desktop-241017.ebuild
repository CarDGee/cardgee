# Copyright 2023 Gentoo Foundation

# CarDGee Overlay

EAPI=8

DESCRIPTION="Meta package with some applications of my choice"
HOMEPAGE="https://github.com/CarDGee/cardgee"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="amd64"
IUSE="alacritty appimage calendar contacts games graphics epiphany gnome gnome-terminal hyprland k3b kcdemu kde kdeconnect keepassxc ktorrent maps mpv music nautilus nemo nerd qbittorrent signal sweeper video virt-manager weather webapp"

RDEPEND="

  alacritty? ( x11-terms/alacritty )
  
  appimage? ( app-misc/appimagelauncher-bin )

	app-misc/base
	
  calendar? ( gnome-extra/gnome-calendar )
  
  contacts? ( gnome-extra/gnome-contacts )
  
	dev-libs/libthai

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
  	gnome-extra/gnome-firmware
  	gnome-extra/gnome-tweaks
  	gnome-extra/polkit-gnome
  	mail-client/evolution
  	media-fonts/cantarell
  	media-gfx/shotwell
  	media-gfx/simple-scan
  	sys-apps/gnome-disk-utility
  	x11-wm/mutter
  	)
  	
  gnome-terminal? ( x11-terms/gnome-terminal )
  	
  graphics? ( app-production/graphics )
  
  hyprland? ( app-arch/file-roller
	app-editors/gedit
	app-misc/base
	app-misc/brightnessctl
	gnome-base/dconf-editor
	gnome-extra/polkit-gnome
	gui-apps/hypridle
	gui-apps/mako
	gui-apps/rofi-wayland
	gui-apps/swaybg
	gui-apps/waybar
	gui-libs/xdg-desktop-portal-hyprland
	gui-wm/hyprland
	media-fonts/joypixels
	media-fonts/twemoji-color-font
	media-sound/pavucontrol
	sys-process/htop
	x11-libs/libnotify
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

  ktorrent? ( net-p2p/ktorrent )
  	
  maps? ( sci-geosciences/gnome-maps )

  mpv? ( media-video/mpv )
  
  music? ( app-production/music )
  	
  nautilus? ( app-arch/file-roller
  	dev-python/nautilus-python )
  	
  nemo? ( gnome-extra/nemo-fileroller )
  	
  nerd? ( media-fonts/nerd-fonts )

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
