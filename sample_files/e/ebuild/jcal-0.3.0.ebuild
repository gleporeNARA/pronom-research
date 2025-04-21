# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
inherit flag-o-matic

DESCRIPTION="Jalali calendar library"
HOMEPAGE="http://nongnu.org/jcal"
SRC_URI="http://tehlug.org/~ashkan/mirror/jcal/${P/_}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="-* amd64 x86 ~x86-fbsd ~x86-freebsd ~amd64-linux ~x86-linux ~x64-macos"
IUSE=""

DEPEND=""
RDEPEND=""

S=${WORKDIR}/${P/_}

src_prepare() {
	default_src_prepare
}

src_configure() {
	econf
}

src_compile() {
        emake || die
}

src_install() {
	emake DESTDIR="${D}" install || die
}
