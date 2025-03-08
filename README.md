# Initialize with Docker

[![GitHub Actions Status](https://github.com/abnt-latex/docker/workflows/Build%20Docker%20Image/badge.svg)](https://github.com/abnt-latex/docker/actions)

## Para usar as imagens (`Packages`)

* [TeXLive and R](https://github.com/orgs/abnt-latex/packages/container/package/texlive-r)

```bash
docker docker pull ghcr.io/abnt-latex/texlive-r:latest
```

## Para construir de forma manual

```mermaid
graph TD;
    A[base-env]-->B[build-env];
    A-->C[final-env];
    B-->C;
```

### Container

```bash
$ docker run --rm -it -v ${PWD}/<the-folder-project>:/data/project latex:ubuntu <the-command-compiler>
```

### Compilar

```bash
./build.sh --dir=${ FOLDER } --file=${ FILE } --mode=${ complete | bib | simple } --simplify # in root
# OR to execute complete mode
pdflatex --interaction=batchmode ${ MAIN_FILE }
bibtex ${ MAIN_FILE }
makeindex ${ MAIN_FILE }.idx
makeglossaries ${ MAIN_FILE }
pdflatex --interaction=batchmode ${ MAIN_FILE }
pdflatex --interaction=nonstopmode ${ MAIN_FILE } | grep ...
# OR
# https://ctan.org/pkg/latexmk
latexmk -pdf ${ MAIN_FILE }
```