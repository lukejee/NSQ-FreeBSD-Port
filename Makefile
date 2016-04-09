# Created by: Luke Jee <lukejee@gmail.com>
# $FreeBSD$

PORTNAME=	nsq
PORTVERSION=	0.3.7
CATEGORIES=	net
MASTER_SITES=	https://s3.amazonaws.com/bitly-downloads/nsq/
DISTNAME=	${PORTNAME}-${PORTVERSION}.freebsd-amd64.go1.6

MAINTAINER=	lukejee@gmail.com
COMMENT=	NSQ pre-build binaries for FreeBSD

ONLY_FOR_ARCHS=	amd64
NO_BUILD= yes

do-install:
	cd ${WRKSRC}/bin && ${FIND} * -type f -exec ${INSTALL_PROGRAM} "{}" "${STAGEDIR}${PREFIX}/bin/{}" \;
.include <bsd.port.mk>
