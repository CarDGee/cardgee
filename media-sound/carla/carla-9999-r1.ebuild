# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# CarDGee Overlay

EAPI=8

PYTHON_COMPAT=( python3_14 )

inherit git-r3 python-single-r1 xdg

EGIT_REPO_URI="https://github.com/falkTX/Carla.git"
EGIT_SUBMODULES=()

DESCRIPTION="Fully-featured audio plugin host, supports many audio drivers and plugin formats"
HOMEPAGE="https://kx.studio/Applications:Carla"
LICENSE="GPL-2 LGPL-3"
SLOT="0"

IUSE="alsa +gtk opengl pulseaudio rdf sf2 sndfile X"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

DEPEND="
	${PYTHON_DEPS}

	$(python_gen_cond_dep 'dev-python/pyqt6[gui,svg,widgets,${PYTHON_USEDEP}]')

	virtual/jack

	alsa? (
		media-libs/alsa-lib
	)

	gtk? (
		x11-libs/gtk+:3
	)

	pulseaudio? (
		media-libs/libpulse
	)

	rdf? (
		dev-python/rdflib
	)

	sf2? (
		media-sound/fluidsynth
	)

	sndfile? (
		media-libs/libsndfile
	)

	X? (
		x11-libs/libX11
	)
"

RDEPEND="${DEPEND}"

BDEPEND="
	virtual/pkgconfig
"

pkg_setup() {
	python-single-r1_pkg_setup
}

src_prepare() {
	sed -i \
		-e "s|exec \$PYTHON|exec ${PYTHON}|" \
		data/carla \
		data/carla-control \
		data/carla-database \
		data/carla-jack-multi \
		data/carla-jack-single \
		data/carla-patchbay \
		data/carla-rack \
		data/carla-settings \
		|| die "sed failed"

	sed -i \
		"s;/share/appdata;/share/metainfo;g" \
		Makefile \
		|| die "sed failed"

	default
}

src_compile() {
	local myemakeargs=(
		PREFIX="/usr"
		LIBDIR="/usr/$(get_libdir)"

		SKIP_STRIPPING=true

		HAVE_FFMPEG=false
		HAVE_ZYN_DEPS=false
		HAVE_ZYN_UI_DEPS=false

		HAVE_QT4=false
		HAVE_PYQT=true

		HAVE_ALSA=$(usex alsa true false)
		HAVE_OPENGL=$(usex opengl true false)
		HAVE_FLUIDSYNTH=$(usex sf2 true false)
		HAVE_GTK3=$(usex gtk true false)
		HAVE_PULSEAUDIO=$(usex pulseaudio true false)
		HAVE_SNDFILE=$(usex sndfile true false)
		HAVE_X11=$(usex X true false)
	)

	emake "${myemakeargs[@]}"
}

src_install() {
	local myemakeargs=(
		PREFIX="/usr"
		LIBDIR="/usr/$(get_libdir)"
	)

	emake \
		DESTDIR="${D}" \
		"${myemakeargs[@]}" \
		install

	find "${D}/usr" -iname "carla-control*" -delete
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
