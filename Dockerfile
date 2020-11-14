FROM docker.io/i386/alpine:3.12

RUN apk add --no-cache \
    wine \
    freetype \
    ncurses

ENV WINEPREFIX=/opt/wineprefix
ENV WINEDEBUG=-all
ENV WINEDLLOVERRIDES="mscoree,mshtml="

RUN wget -O /tmp/install.exe \
    "https://sourceforge.net/projects/nsis/files/NSIS%203/3.06.1/nsis-3.06.1-setup.exe/download" && \
    wine /tmp/install.exe /S && \
    rm /tmp/install.exe

COPY ./makensis /usr/local/bin/makensis