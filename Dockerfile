# syntax=docker/dockerfile:1

ARG TEXLIVE_VERSION="2024"
ARG TEXLIVE_PLATFORM="x86_64-linux"

ARG TEXMF_FOLDER="/usr/share/texmf"

## Preamble
# https://hub.docker.com/_/debian
FROM debian:bookworm-slim AS base-env

ARG TEXLIVE_VERSION

LABEL \
  org.opencontainers.image.title="Docker Image of TeXLive" \
  org.opencontainers.image.authors="abnt-latex" \
  org.opencontainers.image.source="https://github.com/abnt-latex/docker"

RUN apt-get update -y -qq && apt-get install -y -qq --no-install-recommends \
    ca-certificates \
    # recommend by debian docker
    locales \
    # use custom font
    fontconfig \
    # Required for XeLaTeX to work
    # libfontconfig1 \
    # install R
    r-base r-base-dev && \
    #
    localedef -i pt_BR -c -f UTF-8 -A /usr/share/locale/locale.alias pt_BR.UTF-8 && \
    update-ca-certificates && \
    apt-get -y autoclean && apt-get -y autoremove && apt-get -y clean && \
    rm -rf /var/lib/apt/lists/*

RUN rm -rf /usr/local/texlive/${TEXLIVE_VERSION} \
    rm -rf ~/.texlive${TEXLIVE_VERSION}

ENV LANG=pt_BR.utf8

## Build TexLive
# https://www.tug.org/texlive/
FROM base-env AS build-env

RUN apt-get update -y -qq && apt-get install -y -qq --no-install-recommends \
    wget \
    # requeriments for install texlive
    build-essential \
    libwww-perl && \
    #
    apt-get -y autoclean && apt-get -y autoremove && apt-get -y clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /tmp/texlive
RUN wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
RUN mkdir -p install-tl-unx
RUN tar -xvf install-tl-unx.tar.gz -C install-tl-unx --strip-components=1

# Install TexLive with Profile
COPY texlive.profile install-tl-unx/texlive.profile

RUN cd install-tl-unx && \
    perl install-tl --profile=texlive.profile

# Post-install
RUN rm -rf /tmp

FROM base-env AS final-env

ARG TEXLIVE_VERSION
ARG TEXLIVE_PLATFORM

ARG TEXMF_FOLDER

RUN apt-get update -y -qq && apt-get install -y -qq --no-install-recommends \
    libfontconfig1-dev \
    libxml2-dev && \
    #
    apt-get -y autoclean && apt-get -y autoremove && apt-get -y clean && \
    rm -rf /var/lib/apt/lists/*

COPY --from=build-env /usr/local/texlive /usr/local/texlive

ENV PATH="/usr/local/texlive/${TEXLIVE_VERSION}/bin/${TEXLIVE_PLATFORM}:${PATH}"
ENV INFOPATH="/usr/local/texlive/${TEXLIVE_VERSION}/texmf-dist/doc/info:${INFOPATH}"
ENV MANPATH="/usr/local/texlive/${TEXLIVE_VERSION}/texmf-dist/doc/man:${MANPATH}"

# R
WORKDIR /tmp/R
RUN R -e "Sys.setlocale('LC_ALL', 'pt_BR.UTF-8')"
COPY install.R .
RUN R -e "source('install.R', encoding = 'UTF-8');"

# System font configuration
COPY fonts /usr/local/share/fonts/
RUN fc-cache -fsv

COPY texmf/ ${TEXMF_FOLDER}/
RUN texhash 

## unit tests
# check if the file was generated
WORKDIR /tmp/test
RUN latex small2e
RUN cat small2e.log | grep -q "Output written on small2e.dvi"
# command file: not found
# RUN file small2e.dvi | grep -q 'TeX DVI'

# cleanup
RUN rm -rf /tmp

WORKDIR /

# Install more LaTeX Packages in entrypoint docker
# or extra lib-dev
# RUN tlmgr install newtx

# docker build -t texlive-r:debian .
# docker run --name texlive-r -it --rm texlive-r:debian /bin/bash