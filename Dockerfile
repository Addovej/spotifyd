FROM alpine:3.12.1 AS build

RUN apk -U --no-cache add \
	alsa-lib-dev \
	autoconf \
	automake \
	build-base \
	gcc \
	git \
	libconfig-dev \
	libdaemon-dev \
	libstdc++ \
	libtool \
	openssl-dev \
	rust \
	cargo

RUN cd /root \
    && git clone https://github.com/Spotifyd/spotifyd . \
    && cargo build --release


FROM alpine:3.12.1

RUN apk -U --no-cache add \
    alsa-lib-dev \
    libconfig-dev \
    libtool

COPY --from=build /root/target/release/spotifyd /usr/bin/spotifyd
