ucastrothesis
=============

This is a set of skeleton files that will help you create a University
of California dissertation using LaTeX. It's built on the venerable
"ucthesis.cls" file, but adds key improvements to track changes in the
thesis formatting guidelines as well as many other improvements.

It's named "ucastrothesis" since the files and lore originate in the
UC Berkeley Astronomy Department, but the setup will be applicable
to anyone that uses LaTeX with small changes.

The key files that you need to look at are:

  * `setup.tex`, where you enter boilerplate info like your thesis title.
  * `thesis.tex`, where you put toplevel LaTeX definitions, include
    packages, and write your abstract, dedication, and acknowledgements.
  * `intro/intro.tex`, a template thesis chapter.
  * `Makefile`, which defines the rules for how the thesis is compiled.

The intended file structure is for each chapter to have its own
subdirectory where all of the necessary files are kept, and then to
keep miscellaneous text and other thesis-wide resources in the
toplevel directory (which is the one containing this file).

The Makefile is set up so that you can just type `make` to compile
your thesis as a beautiful, rules-compliant PDF. Typing `make all` will
also generate the signature page upon which your committee will put
their precious, precious marks.

The Makefile contains an example of using the powerful
dependency-tracking features of `make` to generate auxiliary files as
you compile your thesis.  Add a file to the "deps" variable if it
needs to be created before compiling your thesis; add it to "cleans"
if it can safely be deleted to force regeneration of all your thesis
files (via `make clean`).

Things will probably go the most smoothly if you take the time to
learn a bit about how `latex`, `make`, and `git` work.


Copyright Notice
================

Copyright 2012 Peter Williams

This file is free documentation; the copyright holder gives unlimited
permission to copy, distribute, and modify it.
