# Copyright 2023 Gentoo Foundation

# CarDGee Overlay

EAPI=8

DESCRIPTION="Meta package providing my choice of applications for a basic GNU/linux OS (Gentoo BTW)"
HOMEPAGE="https://github.com/CarDGee/cardgee"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="amd64"
IUSE="dislocker doas f2fs genkernel installkernel lld modprobed ntfs openrc phn1673 systemd xfs"

RDEPEND="
	app-arch/lzip
	app-arch/unrar
	app-crypt/mit-krb5
	app-portage/eix
	app-portage/gentoolkit
	
  dislocker? ( sys-fs/dislocker )
	
  doas? ( app-admin/doas )
  
	dev-vcs/git
	
  f2fs? ( sys-fs/f2fs-tools )
	
  genkernel? ( sys-kernel/genkernel )
  
  installkernel? ( sys-kernel/installkernel )
	
  lld? ( llvm-core/lld )
  
  modprobed? ( sys-kernel/modprobed-db )
  
  ntfs? ( sys-fs/ntfs3g )

  openrc? ( sys-block/zram-init )
  
  phn1673? ( sys-firmware/intel-microcode
  	sys-firmware/sof-firmware )

  systemd? ( sys-apps/zram-generator )
  
	sys-apps/usbutils
	sys-devel/bc
	sys-devel/mold
	sys-fs/dosfstools
	sys-fs/exfatprogs
	sys-kernel/linux-firmware
	sys-process/schedtool
  xfs? ( sys-fs/xfsprogs )
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
