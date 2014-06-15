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
    packages, and write your abstract, dedication, and acknowledgments.
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

Things will go the most smoothly if you take the time to learn a bit about how
`latex`, `make`, and `git` work. All three are very powerful tools that
are worth understanding.


Optional Features
=================

This module includes support for several optional features that may be helpful
in unusual circumstances. This options are provided as branches in the `git`
repository that may be activated by merging them into your tree.

The options are:

  * `option-co-chairs` makes it so your thesis has two co-chairs
  * `option-microtype` turns on some subtle typographic improvements that are 
    nice, but some *LaTeX* installs have trouble handling.
  * `option-xetex` compiles your PDF with the [XeTeX](http://tug.org/xetex/) engine
    rather than standard *LaTeX*.

To enable an option, use `git` to merge it into your codebase; for example:

    git merge option-co-chairs

You should be able to do this with multiple options, although if they touch
on overlapping matters, you may have to merge their changes manually using
`git`'s conflict resolution framework.

To learn a bit more about an option, read its commit messages:

    git log master..option-microtype

Finally, if an option *almost* does something you need, but not quite, you can
investigate how to implement it yourself by looking at the changes made when
activating the option. This is done with:

    git diff master..option-co-chairs

If you implement a new optional feature, please submit it with a GitHub pull
request!


Bugs & Improvements
===================

If you run into problems with these templates or would like to contribute an
improvement, please use the [GitHub issue
tracker](https://github.com/pkgw/ucastrothesis/issues) and/or file a pull
request. If you're having *LaTeX* issues, the [TeX
StackExchange](http://tex.stackexchange.com/) is an excellent resource.


See Also
========

These templates are **formatted for other universities**, but may provide some
inspiration if you want to get down and dirty:

  * [Jordan Suchow](https://twitter.com/suchow)'s
    [Dissertate.cls](https://github.com/suchow/Dissertate/), which has some
    nice fonts (at the expense of requiring the *xelatex* engine).
  * [Andrew Leifer](https://twitter.com/AndrewLeifer)'s
    [template](https://github.com/aleifer/LaTeX-template-for-Harvard-dissertation)
    derived from the above.


Copyright Notice
================

Copyright 2012, 2013, 2014 Peter Williams

This file is free documentation; the copyright holder gives unlimited
permission to copy, distribute, and modify it.
