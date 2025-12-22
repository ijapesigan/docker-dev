FROM ijapesigan/missing:latest

ADD scripts /usr/src/local/src
RUN --mount=type=secret,id=GITHUB_PAT \
    cd /usr/src/local/src          && \
    chmod 0755 setup.sh            && \
    ./setup.sh                     && \
    rm -rf /usr/src/local/src

# extra metadata
LABEL org.opencontainers.image.source="https://github.com/ijapesigan/docker-dev" \
      org.opencontainers.image.authors="Ivan Jacob Agaloos Pesigan <ijapesigan@gmail.com>"
