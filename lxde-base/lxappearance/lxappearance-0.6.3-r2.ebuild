# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# CarDGee overlay

EAPI=6

PLOCALES="ar be bg ca cs da de el en_GB es et eu fa fi fo fr gl he hr hu id is
it ja kk ko lg lt nl pa pl pt_BR pt ro ru sl sr@latin sr sv te tr tt_RU ug uk
ur_PK ur vi zh_CN zh_TW"

PLOCALE_BACKUP="en_GB"

inherit l10n

DESCRIPTION="LXDE GTK+ theme switcher"
HOMEPAGE="https://wiki.lxde.org/en/LXAppearance"
SRC_URI="mirror://sourceforge/lxde/${P}.tar.xz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~alpha amd64 arm ~arm64 ~mips ppc x86 ~amd64-linux ~x86-linux"
IUSE="dbus"

RDEPEND="x11-libs/gtk+:3
	dbus? ( dev-libs/dbus-glib )"
DEPEND="${RDEPEND}
	virtual/pkgconfig
	dev-util/intltool
	sys-devel/gettext"

src_prepare() {
	default

	export LINGUAS="${LINGUAS:-${PLOCALE_BACKUP}}"
	l10n_get_locales > po/LINGUAS || die
}

src_configure() {
	econf \
		$(use_enable dbus)\
		$(use_enable gtk3)
}

pkg_postinst() {
elog
elog "This is a cardgee overlay ebuild"
elog "A collection of ebuilds for my own personal use not available on portage tree."
elog "There is no support whatsoever, but if you find a bug, please file an issue."
elog
elog "You have installed lxappearance GTK3 version"
elog "CarDGee Overlay"
elog
}

