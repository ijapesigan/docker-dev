FROM ijapesigan/dev:latest

ADD scripts /usr/src/local/src
RUN chmod 0755 /usr/src/local/src/setup.sh         && \
    ./usr/src/local/src/setup.sh                   && \
    rm -rf /usr/src/local/src

# extra metadata
LABEL author="Ivan Jacob Agaloos Pesigan <ijapesigan@gmail.com>"
LABEL description="ijapesigan/dev container."
