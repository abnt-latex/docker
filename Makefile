ifeq ($(folder),)
PROJECT_DIR=project/
else
PROJECT_DIR=projects/$(folder)/
endif

FIGURES_SVG=$(wildcard $(PROJECT_DIR)figure/*.svg)
FIGURES_PDF=$(FIGURES_SVG:.svg=.pdf)

R_FILES=$(shell find $(PROJECT_DIR) -name '*.Rtex')
TEX_FILES=$(patsubst %.Rtex, %.tex, $(R_FILES))
TEX_FILES_SUB=$(TEX_FILES)$(shell find $(PROJECT_DIR) -name '*.tex')

## Bibliography auxiliary files (bibtex/biblatex/biber)
BBL_FILES=$(patsubst %.tex, %.bbl, $(TEX_FILES_SUB))
BCF_FILES=$(patsubst %.tex, %.bcf, $(TEX_FILES_SUB))
BLG_FILES=$(patsubst %.tex, %.blg, $(TEX_FILES_SUB))

BIB_AUX_FILES=$(BBL_FILES)$(BCF_FILES)$(BLG_FILES)

## hyperref
REF_FILES=$(patsubst %.tex, %.brf, $(TEX_FILES_SUB))

## makeidx
IDX_FILES=$(patsubst %.tex, %.idx, $(TEX_FILES_SUB))
ILG_FILES=$(patsubst %.tex, %.ilg, $(TEX_FILES_SUB))
IND_FILES=$(patsubst %.tex, %.ind, $(TEX_FILES_SUB))
IST_FILES=$(patsubst %.tex, %.ist, $(TEX_FILES_SUB))

IDX_AUX_FILES=$(IDX_FILES)$(ILG_FILES)$(IND_FILES)$(IST_FILES)

## glossaries
GLG_FILES=$(patsubst %.tex, %.glg, $(TEX_FILES_SUB))
GLO_FILES=$(patsubst %.tex, %.glo, $(TEX_FILES_SUB))
GLS_FILES=$(patsubst %.tex, %.gls, $(TEX_FILES_SUB))

GLO_AUX_FILES=$(GLG_FILES)$(GLO_FILES)$(GLS_FILES)

## Core latex/pdflatex auxiliary files
AUX_FILES=$(patsubst %.tex, %.aux, $(TEX_FILES_SUB))
LOF_FILES=$(patsubst %.tex, %.lof, $(TEX_FILES_SUB))
LOG_FILES=$(patsubst %.tex, %.log, $(TEX_FILES_SUB))
LOT_FILES=$(patsubst %.tex, %.lot, $(TEX_FILES_SUB))
FLS_FILES=$(patsubst %.tex, %.fls, $(TEX_FILES_SUB))
OUT_FILES=$(patsubst %.tex, %.out, $(TEX_FILES_SUB))
TOC_FILES=$(patsubst %.tex, %.toc, $(TEX_FILES_SUB))
FMT_FILES=$(patsubst %.tex, %.fmt, $(TEX_FILES_SUB))
FOT_FILES=$(patsubst %.tex, %.fot, $(TEX_FILES_SUB))
CB_FILES=$(patsubst %.tex, %.cb, $(TEX_FILES_SUB))
CB2_FILES=$(patsubst %.tex, %.cb2, $(TEX_FILES_SUB))
LB_FILES=$(patsubst %.tex, %.lb, $(TEX_FILES_SUB))

LATEX_AUX_FILES=$(AUX_FILES)$(LOF_FILES)$(LOG_FILES)$(LOT_FILES)$(FLS_FILES)$(OUT_FILES)$(TOC_FILES)$(FMT_FILES)$(FOT_FILES)$(CB_FILES)$(CB2_FILES)$(LB_FILES)

TEMP_FILES=$(BIB_AUX_FILES)$(LATEX_AUX_FILES)$(REF_FILES)$(IDX_AUX_FILES)$(GLO_AUX_FILES)

ifeq ($(mode), abntex)
target: targetAbntex
else ifeq ($(mode), bib)
target: targetBib
else ifeq ($(mode), simple)
target: targetSimple
else
target:
	$(info mode not set!)
endif

targetAbntex: $(FIGURES_PDF) $(TEX_FILES)
	cd $(PROJECT_DIR) && pdflatex -interaction=nonstopmode main
	cd $(PROJECT_DIR) && bibtex main
	cd $(PROJECT_DIR) && makeindex main.idx
	cd $(PROJECT_DIR) && makeglossaries main
	cd $(PROJECT_DIR) && pdflatex -interaction=nonstopmode main
	cd $(PROJECT_DIR) && pdflatex -interaction=nonstopmode main

targetBib: $(FIGURES_PDF) $(TEX_FILES)
	cd $(PROJECT_DIR) && pdflatex -interaction=nonstopmode main
	cd $(PROJECT_DIR) && bibtex main
	cd $(PROJECT_DIR) && pdflatex -interaction=nonstopmode main
	cd $(PROJECT_DIR) && pdflatex -interaction=nonstopmode main

targetSimple: $(FIGURES_PDF) $(TEX_FILES)
	cd $(PROJECT_DIR) && pdflatex -interaction=nonstopmode main

clean:
	rm -f $(FIGURES_PDF)
	rm -f $(TEX_FILES)
	rm -f $(TEMP_FILES)
	cd $(PROJECT_DIR) && rm -f -r cache/*
	cd $(PROJECT_DIR) && rm -f -r figure/*.pdf
	cd $(PROJECT_DIR) && rm -f -r datas/generated/*

$(TEX_FILES): %.tex: %.Rtex
	R -e "library(knitr);setwd('$(PROJECT_DIR)');Sys.setlocale('LC_ALL', 'C.utf8');options(encoding = 'UTF-8');knit(input = '$(subst $(PROJECT_DIR),,$<)', output = '$(subst $(PROJECT_DIR),,$@)', encoding = 'UTF-8');"

figure/%.pdf: figure/%.svg 
	inkscape --export-filename=$@ $<

.PHONY: all target clean