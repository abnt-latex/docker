# Initialize with Docker

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
make target folder={ FOLDER } mode={ abntex | bib | simple } # in root
# OR to execute abntex mode
pdflatex -interaction=nonstopmode { MAIN_FILE }
bibtex { MAIN_FILE }
makeindex { MAIN_FILE }.idx
makeglossaries { MAIN_FILE }
pdflatex -interaction=nonstopmode { MAIN_FILE }
pdflatex -interaction=nonstopmode { MAIN_FILE }
```