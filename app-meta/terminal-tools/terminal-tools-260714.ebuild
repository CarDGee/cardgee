# Copyright 2024 Gentoo Foundation

# CarDGee Overlay

EAPI=8

DESCRIPTION="Meta package providing my selection of applications for my linux desktop"
HOMEPAGE="https://github.com/CarDGee/cardgee"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="amd64"
IUSE="android ftp ufw vim weechat wgetpaste yt-dlp zsh"

RDEPEND="

  android? ( dev-util/android-tools )
	app-misc/fastfetch
	sys-apps/plocate
	
  ftp? ( net-ftp/vsftpd )
  	
  ufw? ( net-firewall/ufw )
  
  weechat? ( net-irc/weechat )
  
  wgetpaste? ( app-text/wgetpaste )

  vim? ( app-editors/vim )

  yt-dlp? ( net-misc/yt-dlp )
  
  zsh? ( app-shells/ohmyzsh 
	app-shells/zsh-autosuggestions
	app-shells/zsh-syntax-highlighting	
	)
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
