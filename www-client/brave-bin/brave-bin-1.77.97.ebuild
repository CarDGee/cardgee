# Copyright 2025 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# CarDGee Overlay

EAPI=8

BRAVE_PN="${PN/-bin/}"

CHROMIUM_LANGS="
	af am ar az bg bn ca cs da de el en-GB en-US es es-419 et fa fi fil fr 
	gu he hi hr hu id it ja ka km kn ko lt lv mk ml mn mr ms my nb nl pl 
	pt-BR pt-PT ro ru si sk sl sq sr sr-latin sv sw ta te th tr uk ur uz vi 
	zh-CN zh-TW
"

inherit chromium-2 xdg-utils desktop

DESCRIPTION="Brave Web Browser"
HOMEPAGE="https://brave.com"
SRC_URI="https://github.com/brave/brave-browser/releases/download/v${PV}/brave-browser-${PV}-linux-amd64.zip -> ${P}.zip"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="amd64"
IUSE="keyring"

DEPEND="
    dev-libs/glib
    dev-libs/icu
    dev-libs/nss
    media-libs/alsa-lib
    media-libs/fontconfig
    media-libs/freetype
    net-print/cups
    x11-libs/gtk+:3
    x11-libs/libnotify
"

QA_PREBUILT="*"

S=${WORKDIR}

src_prepare() {
	pushd "${S}/locales" > /dev/null || die
		chromium_remove_language_paks
	popd > /dev/null || die

	default
}

src_install() (
	shopt -s extglob

		declare BRAVE_HOME=/opt/${BRAVE_PN}

		dodir ${BRAVE_HOME%/*}

		insinto ${BRAVE_HOME}
			doins -r *
    # Brave has a bug in 1.27.105 where it needs crashpad_handler chmodded
    # Delete crashpad_handler when https://github.com/brave/brave-browser/issues/16985 is resolved.
			exeinto ${BRAVE_HOME}
				doexe brave chrome_crashpad_handler

		dosym ${BRAVE_HOME}/brave /usr/bin/${PN} || die

	# Install Icons for Brave. 
		newicon "${FILESDIR}/braveAbout.png" "${PN}.png" || die
		newicon -s 128 "${FILESDIR}/braveAbout.png" "${PN}.png" || die

	# install-xattr doesnt approve using domenu or doins from FILESDIR
		cp "${FILESDIR}"/${PN}.desktop "${S}"
		domenu "${S}"/${PN}.desktop
)

pkg_postinst() {
	xdg_desktop_database_update
	xdg_mimeinfo_database_update
	elog
	elog "This is a cardgee overlay ebuild"
	elog "A collection of ebuilds for my own personal use not available on portage tree."
	elog "There is no support whatsoever, but if you find a bug, please file an issue."
	elog
}

pkg_postrm() {
	xdg_desktop_database_update
	xdg_mimeinfo_database_update
}

