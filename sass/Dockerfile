FROM alpine:latest
LABEL maintainer="joao.fernandes@docker.com"

RUN apk add --no-cache build-base git make

WORKDIR /sass
RUN git clone https://github.com/sass/sassc.git
RUN git clone https://github.com/sass/libsass.git
RUN git clone https://github.com/sass/sass-spec.git

ENV SASSC_PATH=/sass/sassc
ENV SASS_LIBSASS_PATH=/sass/libsass
ENV SASS_SPEC_PATH=/sass/sass-spec

RUN make -C sassc
RUN make -C sassc install
RUN ln -s /usr/local/bin/sassc /bin/sass

WORKDIR /app
VOLUME ["/app"]

ENTRYPOINT ["/bin/sass"]
CMD ["--help"]
