# A multi-stage pipeline to create a minimal image with KindleGen
FROM alpine:latest AS build-env
ENV DEPS curl
ENV KINDLEGEN_URL "http://kindlegen.s3.amazonaws.com/kindlegen_linux_2.6_i386_v2_9.tar.gz"

RUN apk update && apk add $DEPS
RUN mkdir -p /build
WORKDIR /build
RUN curl -skL -o kindlegen.tar.gz $KINDLEGEN_URL && \
    tar -xzf kindlegen.tar.gz && \
    cp kindlegen /bin

#Minimal image with Alpine+KindleGen
FROM scratch
MAINTAINER Joao Fernandes <joao.fernandes@docker.com>
COPY --from=build-env /bin/kindlegen /kindlegen
# Kindlegen writes to /tmp but we can't use the run directive since we're in scratch
COPY --from=build-env /tmp /tmp
WORKDIR /app
ENTRYPOINT ["/kindlegen"]
