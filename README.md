# Initialize with Docker

[![GitHub Actions Status](https://github.com/abnt-latex/docker/workflows/Build%20Docker%20Image/badge.svg)](https://github.com/abnt-latex/docker/actions)

## Para usar as imagens (`Packages`)

* [TeXLive and R](https://github.com/orgs/abnt-latex/packages/container/package/texlive-r)

```bash
docker docker pull ghcr.io/abnt-latex/texlive-r:latest
```

## Para fazer de forma manual

### Image

Para criar a imagem do latex:ubuntu [40:00.0s]:
```bash
$ docker build -t latex:ubuntu .
```

Para listar todas as imagens criadas:
```bash
$ docker images
```

### Container

```bash
$ docker run --rm -it -v ${PWD}/<the-folder-project>:/data/project latex:ubuntu <the-command-compiler>
```

Para listar, apagar e parar todas os containers criados:
```bash
$ docker ps
$ docker stop <the-container-id>
$ docker rm <the-container-id>
```

# Install texlive

```bash
sudo apt-get install texlive-full
# OR
sudo apt-get install texlive-publishers texlive-lang-portuguese texlive-latex-extra texlive-fonts-recommended
# tlmgr install abntex2
```

### Define Paths

```bash
export PATH="/usr/local/texlive/<the-version-texlive>/bin/x86_64-linux:$PATH"
export INFOPATH="/usr/local/texlive/<the-version-texlive>/texmf-dist/doc/info:$INFOPATH"
export MANPATH="/usr/local/texlive/<the-version-texlive>/texmf-dist/doc/man:$MANPATH"
```

### Compile

```bash
./build.sh --dir=${ FOLDER } --file=${ FILE } --mode=${ complete | bib | simple } --simplify # in root
# OR to execute complete mode
pdflatex --interaction=batchmode ${ MAIN_FILE }
bibtex ${ MAIN_FILE }
makeindex ${ MAIN_FILE }.idx
makeglossaries ${ MAIN_FILE }
pdflatex --interaction=batchmode ${ MAIN_FILE }
pdflatex --interaction=nonstopmode  ${ MAIN_FILE } | grep ...
# OR
# https://ctan.org/pkg/latexmk
latexmk -pdf ${ MAIN_FILE }
```