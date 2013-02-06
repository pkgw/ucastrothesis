# This work is dedicated to the public domain.

default: thesis.pdf # default target if you just type "make"


# Resources and rules for the introductory chapter. Sample 'make' rule
# included to show how you can process data as you compile your thesis
# using standard GNU make constructs.

deps += intro/intro.tex intro/processed.tex
cleans += intro/intro.aux intro/processed.tex

intro/processed.tex: intro/sample.tex
	sed -e s/terrible/wonderful/ $< >$@


# Chapter Two

## deps += ...
## cleans += ...
## etc


# The thesis itself. We move the PDF to a new filename so that viewers
# don't keep on trying to reload the file as it's being written and
# rewritten by pdfLaTeX.

deps += myucthesis.cls uct12.clo aasmacros.sty mydeluxetable.sty \
  setup.tex thesis.bib yahapj.bst
cleans += thesis.pdf setup.aux .latexwork/*
toplevels += thesis.pdf

thesis.pdf: thesis.tex $(deps)
	./latexdriver -x -l -b $< $@


# Approval page

cleans += approvalpage.aux approvalpage.log approvalpage.pdf
toplevels += approvalpage.pdf

approvalpage.pdf: approvalpage.tex $(deps)
	./latexdriver -x -l $< $@


# Helpers

all: $(toplevels)

clean:
	-rm -f $(cleans)
