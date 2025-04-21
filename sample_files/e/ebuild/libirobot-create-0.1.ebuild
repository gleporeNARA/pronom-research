# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils base

DESCRIPTION="iRobot Create communication library."
HOMEPAGE="http://www.nongnu.org/libirobot-create/"
SRC_URI="http://download.savannah.gnu.org/releases/libirobot-create/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

src_compile() {
        econf || die "econf failed"
	emake FLAGS="${CFLAGS}" || die "compile problem"
}

src_install() {
        emake DESTDIR="${D}" install || die "make install failed"
}
