# Copyright 2023 Gentoo Foundation

# CarDGee Overlay

EAPI=8

DESCRIPTION="Meta package with some applications of my choice"
HOMEPAGE="https://github.com/CarDGee/cardgee"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="amd64"
IUSE="epiphany gnome nautilus nemo"

RDEPEND="
	app-admin/keepassxc
	app-emulation/virt-manager
	app-misc/appimagelauncher-bin
	app-misc/github-desktop-bin
	dev-util/android-tools
  epiphany? ( www-client/epiphany )
	
  gnome? ( app-editors/gedit
  	dev-libs/gjs
  	gnome-base/gnome-core-libs
  	gnome-base/gnome-session
  	gnome-base/gnome-settings-daemon
  	gnome-base/gnome-control-center
  	gnome-base/gnome-shell
  	gnome-extra/gnome-browser-connector
  	gnome-extra/gnome-calculator
  	gnome-extra/gnome-calendar
  	gnome-extra/gnome-contacts
  	gnome-base/dconf-editor
  	gnome-extra/gdm-settings
  	gnome-extra/gnome-firmware
  	gnome-extra/gnome-tweaks
  	gnome-extra/gnome-weather
  	mail-client/evolution
  	media-fonts/cantarell
  	media-gfx/shotwell
  	sci-geosciences/gnome-maps
  	sys-apps/gnome-disk-utility
  	x11-wm/mutter
  	x11-terms/gnome-terminal
  	)
  	
  nautilus? ( app-arch/file-roller
  	dev-python/nautilus-python
  	)
  	
  nemo? ( gnome-extra/nemo-fileroller 
  	)
  	
  	media-fonts/nerd-fonts
	media-video/mpv
	net-im/signal-desktop-bin
	net-misc/yt-dlp
	net-p2p/qbittorrent
	www-apps/webapp-manager
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

