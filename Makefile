texargs = -interaction nonstopmode -halt-on-error -file-line-error

default: mthesis.pdf # default target if you just type "make"


# Introduction

deps += intro/intro.tex
cleans += intro/intro.aux


# The thesis itself. We move the PDF to a new filename so that viewers
# don't keep on trying to reload the file as it's being written and
# rewritten by pdfLaTeX. Instead we pseudo-atomically rename after all
# the processing is done. (You might think that a 'mv' would be the
# way to do this, but on Linux, Evince doesn't try to reload the file
# that it's currently looking at unless the file gets opened in write
# mode and closed, so we 'cp' instead.)

deps += uct12.clo aasmacros.sty setup.tex thesis.bib yahapj.bst
cleans += thesis.aux thesis.bbl thesis.blg thesis.lof thesis.log \
  thesis.lot thesis.out thesis.toc mthesis.pdf setup.aux
toplevels += mthesis.pdf

ten = ==========
eighty = $(ten)$(ten)$(ten)$(ten)$(ten)$(ten)$(ten)$(ten)
divider = echo ; echo $(eighty) ; echo $(eighty) ; echo

mthesis.pdf: thesis.tex $(deps)
	pdflatex $(texargs) $(basename $<) >& chatter.txt
	bibtex $(basename $<)
	pdflatex $(texargs) $(basename $<) >& chatter.txt
	pdflatex $(texargs) $(basename $<) >& chatter.txt
	cp -f thesis.pdf $@ && rm -f thesis.pdf


# Approval page

cleans += approvalpage.aux approvalpage.log approvalpage.pdf
toplevels += approvalpage.pdf

approvalpage.pdf: approvalpage.tex $(deps)
	pdflatex $(texargs) $(basename $<)


# Helpers

all: $(toplevels)

clean:
	-rm -f $(cleans)
