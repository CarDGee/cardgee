# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# CarDGee Overlay

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
inherit gnome2-utils python-single-r1 meson xdg optfeature

DESCRIPTION="Run Windows software and games on Linux"
HOMEPAGE="https://usebottles.com/"

if [[ "${PV}" == "9999" ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/bottlesdevs/Bottles/"
else
	SRC_URI="https://github.com/bottlesdevs/Bottles/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
	S="${WORKDIR}/Bottles-${PV}"
	KEYWORDS="amd64"
fi

LICENSE="GPL-3"
SLOT="0"

IUSE="test"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"
RESTRICT="!test? ( test )"



DEPEND="
	gui-libs/gtk:4[introspection]
	gui-libs/libadwaita[introspection]
"
RDEPEND="
	${PYTHON_DEPS}
	${DEPEND}
	app-arch/cabextract
	app-arch/p7zip
	dev-libs/libportal
	gui-libs/gtksourceview[introspection]
	media-gfx/imagemagick
	x11-apps/xdpyinfo

	$(python_gen_cond_dep '
		app-arch/patool[${PYTHON_USEDEP}]
		dev-python/chardet[${PYTHON_USEDEP}]
		dev-python/FVS[${PYTHON_USEDEP}]
		dev-python/icoextract[${PYTHON_USEDEP}]
		dev-python/markdown[${PYTHON_USEDEP}]
		dev-python/orjson[${PYTHON_USEDEP}]
		dev-python/pathvalidate[${PYTHON_USEDEP}]
		dev-python/pycurl[${PYTHON_USEDEP}]
		dev-python/pygobject[${PYTHON_USEDEP}]
		dev-python/pyyaml[${PYTHON_USEDEP}]
		dev-python/requests[${PYTHON_USEDEP}]
		dev-python/urllib3[${PYTHON_USEDEP}]
		dev-python/vkbasalt-cli[${PYTHON_USEDEP}]
		dev-python/wheel[${PYTHON_USEDEP}]
	')
"
BDEPEND="
	${PYTHON_DEPS}
	dev-util/blueprint-compiler
	dev-libs/glib:2
	sys-devel/gettext
	test? (
		$(python_gen_cond_dep '
			dev-python/pytest[${PYTHON_USEDEP}]
		')
	)
"

PATCHES=(
	"${FILESDIR}/${PV}/disable-flatpak-check.patch"
	"${FILESDIR}/${PV}/allow-non-flatpak.patch"
)

EPYTEST_DESELECT=(
	"bottles/tests/backend/state/test_events.py::test_set_reset"
	"bottles/tests/backend/state/test_events.py::test_simple_event"
	"bottles/tests/backend/state/test_events.py::test_wait_after_done_event"
)

pkg_setup() {
	python-single-r1_pkg_setup
}

src_configure() {
	if [[ "${PV}" == "9999" ]]; then
		local emesonargs=(
			-Ddevel=true
		)
	fi
	meson_src_configure
}

src_install() {
	meson_src_install
	python_optimize "${D}/usr/share/bottles/"
	python_fix_shebang "${D}/usr/"
}

src_test() {
	epytest
}

pkg_preinst() {
	xdg_pkg_preinst
	gnome2_schemas_savelist
}

pkg_postinst() {
	xdg_pkg_postinst
	gnome2_schemas_update
	elog
	elog "This is a cardgee overlay ebuild"
	elog "A collection of ebuilds for my own personal use not available on portage tree."
	elog "There is no support whatsoever, but if you find a bug, please file an issue."
	elog
}
