# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# CarDGee Overlay

EAPI=8

CHROMIUM_LANGS="af am ar bg bn ca cs da de el en-GB en-US es es-419 et fa fi fil fr
	gu he hi hr hu id it ja kn ko lt lv ml mr ms nb nl pl pt-BR pt-PT ro ru sk
	sl sr sv sw ta te th tr uk ur vi zh-CN zh-TW"

inherit desktop xdg unpacker

DESCRIPTION="Thorium Browser: A fast and secure browser for the modern web."
HOMEPAGE="https://github.com/Alex313031/thorium"

IUSE=""

SRC_URI="https://github.com/Alex313031/thorium/releases/download/M${PV}/thorium-browser_TH24_${PV}_SSE4.deb"

RESTRICT="strip"
LICENSE="BSD-3-Clause-Thorium"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
    dev-libs/nss
    dev-libs/icu
"
RDEPEND="${DEPEND}"

S="${WORKDIR}"

src_unpack() {
    unpack_deb "${A}" || die "Failed to unpack deb file"
    mv "${WORKDIR}/opt/chromium.org/thorium" "${S}" || die "Failed to move files to ${S}"
}

src_install() {
    local install_dir="/opt/thorium-browser-bin"  # Target installation directory
    dodir "${install_dir}"
    cp -r "${S}/thorium/." "${D}${install_dir}" || die "Failed to copy Thorium files to destination directory"
    fperms 0755 "${install_dir}/thorium" \
                "${install_dir}/thorium-browser" \
                "${install_dir}/thorium_shell" \
                "${install_dir}/chrome-sandbox"
    dosym "${install_dir}/thorium-browser" "/usr/bin/thorium-browser"
    dosym "${install_dir}/thorium" "/usr/bin/thorium"

    local sizes=(16 24 32 48 64 128 256)
    for size in "${sizes[@]}"; do
        local icon_path="${install_dir}/product_logo_${size}.png"
        local icon_name="thorium-browser-${size}"
        if [[ -e "${D}${icon_path}" ]]; then
            newicon "${D}${icon_path}" "${icon_name}"
        else
            eerror "Icon file ${icon_path} not found in ${D}${install_dir}. Skipping installation."
        fi
    done

	# Create desktop entry without the file extension for the icon
	make_desktop_entry "thorium-browser" "Thorium Browser" "/opt/thorium-browser-bin/product_logo_128.png" "Network;WebBrowser;"

	# Install license file
    local license_dir="/usr/share/licenses/${PN}"
    insinto "${license_dir}"
    newins "${FILESDIR}/BSD-3-Clause-Thorium" "BSD-3-Clause-Thorium.txt"
}

export PORTAGE_EBUILD_PHASES="multilib-strict-skip ${PORTAGE_EBUILD_PHASES}"

pkg_postinst() {
	elog
	elog "Credits to those who deserve them..."
	elog "This ebuild is heavily based on the one from"
	elog "https://github.com/fraschm1998/guru/tree/master/www-client/thorium-browser-bin"
	elog "I will keep updating it here until or if it gets accepted into guru overlay"
	elog
	elog
	elog "This is a cardgee overlay ebuild"
	elog "A collection of ebuilds for my own personal use not available on portage tree."
	elog "There is no support whatsoever, but if you find a bug, please file an issue."
	elog
	elog "You have installed a personal meta package"
	elog "It may include applications which you don't need or like"
	elog
}
