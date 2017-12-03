# A multi-stage pipeline to create a minimal image just with Alpine&Pandoc
FROM alpine:latest AS build-env
ENV DEPS curl
ENV PANDOC_VERSION "2.0.3"
ENV PANDOC_URL "https://github.com/jgm/pandoc/releases/download/${PANDOC_VERSION}/pandoc-${PANDOC_VERSION}-linux.tar.gz"
ENV FILENAME "pandoc-${PANDOC_VERSION}"

RUN apk update && apk add $DEPS
RUN mkdir -p /build
WORKDIR /build
RUN curl -skL -o pandoc.tar.gz $PANDOC_URL && \
    tar -xzf pandoc.tar.gz && \
    cp $FILENAME/bin/pandoc /bin

# Minimal image with Alpine+pandoc
FROM alpine:latest
MAINTAINER Joao Fernandes <joao.fernandes@docker.com>
COPY --from=build-env /bin/pandoc /bin
WORKDIR /src
ENTRYPOINT ["pandoc"]
CMD ["--help"]
