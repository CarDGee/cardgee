# Copyright 2024 Gentoo Foundation

# CarDGee Overlay

EAPI=8

DESCRIPTION="Meta package providing my selection of applications for my linux desktop"
HOMEPAGE="https://github.com/CarDGee/cardgee"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="amd64"
IUSE="android ufw vim zsh"

RDEPEND="

android? ( dev-util/android-tools )
	app-misc/c-lolcat
	app-misc/fastfetch
	sys-apps/plocate
	sys-apps/zram-generator
	
ufw? ( net-firewall/ufw )

vim? ( app-editors/vim )

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
