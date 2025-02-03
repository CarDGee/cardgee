# Copyright 2023 Gentoo Foundation

# CarDGee Overlay

EAPI=8

DESCRIPTION="Meta package providing my choice of applications for a basic GNU/linux OS (Gentoo BTW)"
HOMEPAGE="https://github.com/CarDGee/cardgee"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="amd64"
IUSE="doas f2fs genkernel installkernel lld xfs"

RDEPEND="
	app-arch/lzip
	app-arch/unrar
	app-crypt/mit-krb5
	app-portage/eix
	app-portage/gentoolkit
	
  doas? ( app-admin/doas )
  
	dev-vcs/git
	
  f2fs? ( sys-fs/f2fs-tools )
	
  genkernel? ( sys-kernel/genkernel )
  
  installkernel? ( sys-kernel/installkernel )
	
  lld? ( llvm-core/lld )
  
	sys-apps/usbutils
	sys-devel/bc
	sys-devel/mold
	sys-fs/dislocker
	sys-fs/dosfstools
	sys-fs/exfatprogs
	sys-fs/ntfs3g
	sys-kernel/linux-firmware
	sys-kernel/modprobed-db
	sys-process/schedtool
  xfs? ( sys-fs/xfsprogs )
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
