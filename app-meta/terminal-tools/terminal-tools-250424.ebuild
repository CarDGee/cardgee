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
	app-misc/c-lolcat
	app-misc/fastfetch
	sys-apps/plocate
	
  ftp? ( net-ftp/vsftpd )
  	
  ufw? ( net-firewall/ufw )
  
  weechat? ( net-irc/weechat )
  
  wgetpaste? ( app-text/wgetpaste )

  vim? ( app-editors/vim )

  yt-dlp? ( net-misc/yt-dlp )
  
  zsh? ( app-shells/ohmyzsh 
	app-shells/zsh-autocomplete
	app-shells/zsh-autosuggestions
	app-shells/zsh-history-substring-search
	app-shells/zsh-syntax-highlighting	
	)
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
