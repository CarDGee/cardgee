# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# CarDGee Overlay

EAPI=8

inherit desktop xdg unpacker

DESCRIPTION="Run Windows apps on Linux with seamless integration"
HOMEPAGE="https://www.winboat.app/"
SRC_URI="https://github.com/TibixDev/winboat/releases/download/v${PV}/winboat-${PV}-amd64.deb"

S="${WORKDIR}"
LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"

RESTRICT="strip"

RDEPEND="
	app-containers/docker
	app-containers/docker-compose
	dev-libs/nspr
	dev-libs/nss
	net-misc/freerdp:3
	virtual/libudev
"

src_prepare() {
	default

	for mode in argon2 usb; do
		local pre="${S}/opt/winboat/resources/app.asar.unpacked/node_modules/${mode}/prebuilds"
		if [[ -d ${pre} ]]; then
			find "${pre}/" -mindepth 1 -maxdepth 1 ! -name "linux-x64" -type d -exec rm -rf {} + || die
			rm -f "${pre}/linux-x64/"*musl* || die
		fi
	done
}

src_install() {
	insinto /opt/winboat
	doins -r "${S}"/opt/winboat/*
	fperms +x /opt/winboat/winboat
	fperms +x /opt/winboat/chrome-sandbox
	fperms +x /opt/winboat/chrome_crashpad_handler
	domenu "${S}/usr/share/applications/winboat.desktop"
	newicon -s scalable "${S}/usr/share/icons/hicolor/scalable/apps/winboat.svg" winboat.svg
}

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
