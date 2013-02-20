# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils versionator

SLOT="$(get_major_version)"
RDEPEND=">=virtual/jdk-1.6"

RESTRICT="strip"

DESCRIPTION="JD-GUI is a standalone graphical utility that displays Java source codes of \".class\" files"
HOMEPAGE="http://java.decompiler.free.fr/?q=jdgui"
SRC_URI="http://jd.benow.ca/jd-gui/downloads/${PN}-${PV}.linux.i686.tar.gz"
IUSE=""
KEYWORDS="~x86 ~amd64"

src_install() {
    local dir="/opt/${PN}"
    insinto "${dir}"
    doins jd-gui
    make_wrapper "${PN}" "${dir}/jd-gui"
}
