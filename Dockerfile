FROM nowk/alpine-bare:3.2
MAINTAINER Yung Hwa Kwon <yung.kwon@damncarousel.com>

ENV GCC_VERSION 4.9.2

RUN apk --update add \
	gcc=${GCC_VERSION}-r5 \
	libc-dev \
	make \
	&& rm -rf /var/cache/apk/*

ENTRYPOINT [ "/bin/sh" ]


LABEL \
	version=${GCC_VERSION} \
	os="linux" \
	arch="amd64"
