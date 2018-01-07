FROM alpine:latest
LABEL maintainer="joao.fernandes@docker.com"
ENV PELICAN_VERSION="3.7.1"

RUN apk add --no-cache bash make python2 py-pip
RUN pip install pelican==$PELICAN_VERSION markdown beautifulsoup4

WORKDIR /app
VOLUME ["/app"]

ENTRYPOINT ["pelican"]
CMD ["--help"]
