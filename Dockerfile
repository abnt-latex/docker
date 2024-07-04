# syntax=docker/dockerfile:1

## Preamble
# Ubuntu 24.04 LTS
FROM ubuntu:24.04 AS build-env

# Initialize
RUN apt-get update --quiet

RUN apt-get install -y -qq --no-install-recommends \
    ca-certificates \
    build-essential \
    wget \
    libwww-perl \
    inkscape

RUN apt-get install -y -qq --no-install-recommends locales && locale-gen pt_BR.UTF-8

## TexLive
# Download TexLive
WORKDIR /texlive
RUN wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
RUN mkdir /install-tl-unx
RUN tar -xvf install-tl-unx.tar.gz -C /install-tl-unx --strip-components=1

# Install TexLive with Profile
COPY texlive.profile /install-tl-unx/texlive.profile
RUN perl /install-tl-unx/install-tl --profile=/install-tl-unx/texlive.profile

# Required for XeLaTeX to work
# RUN apt-get install --yes libfontconfig1

# Custom fonts
# RUN apt-get install --yes fontconfig
# COPY fonts /usr/local/share/fonts/my_fonts
# RUN fc-cache

ENV PATH="/usr/local/texlive/2024/bin/x86_64-linux:${PATH}"
ENV INFOPATH="/usr/local/texlive/2024/texmf-dist/doc/info:$INFOPATH"
ENV MANPATH="/usr/local/texlive/2024/texmf-dist/doc/man:$MANPATH"

# Install more Latex Packages
RUN tlmgr install abntex2

RUN rm -r /install-tl-unx
RUN rm install-tl-unx.tar.gz

## R
WORKDIR /R
RUN apt-get install --quiet --yes --no-install-recommends r-base
RUN apt-get install --quiet --yes --no-install-recommends libfontconfig1-dev
RUN apt-get install --quiet --yes --no-install-recommends libxml2-dev

RUN R -e "Sys.setlocale('LC_ALL', 'pt_BR.UTF-8')"
COPY install.R .
RUN R -e "source('install.R', encoding = 'UTF-8');"

WORKDIR .

RUN apt-get --yes autoremove && apt-get --yes clean
RUN rm -rf /var/lib/apt/lists/*

COPY custom-abntex2.cls $HOME/mystyles/
ENV TEXINPUTS=".:$HOME/mystyles//:"

WORKDIR /data
COPY build.sh .
COPY cleanup.sh .

VOLUME ["/data/project"]