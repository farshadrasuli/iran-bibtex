# iran-bibtex — Iran Manual of Style Citation Guide for BibTeX
The iran-bibtex package is a LaTeX package that provides a BibTeX style based on the [Iran Manual of Style](https://imos.irandoc.ac.ir) (1st edn., 2016) guide to Persian, and English information sources.

Numerous examples of the use of this package have been prepared and are available in [the package's GitHub repository](https://github.com/farshadrasuli/iran-bibtex).

The bibliography style produced by `makebst` program ([custom-bib](https://ctan.org/pkg/custom-bib) package), then modified to implement Persian/Farsi language and be compatible with the Iran Manual of Style guidelines. A file named `iran-bibtex-cp1256fa.csf` is prepared (based on the [ascii.csf](https://ctan.org/tex-archive/biblio/bibtex/bibtex-x/csf/ascii.csf) file) for this package to sort references alphabetically (Persian/Farsi, then English).

**Important note:** If you want the references to be sorted in alphabetical order, where Persian/Farsi is placed first and then English/Latin, you must run `bibtex8 -W -c iran-bibtex-cp1256fa` for compilation, and your bibliography database file (*.bib) must be encoded in `utf8` encryption. If you want to place English/Latin first, run `bibtex` for compilation and there is no need `utf8` encryption for the `bib` file.

This package relies on [natbib](https://ctan.org/pkg/natbib) package and works only with [xepersian](https://ctan.org/pkg/xepersian) package.


## Copyright
Copyright (c) 2023 Farshad Rasuli (farshad.rasuli@gmail.com).

This package distributed under the LaTeX Project Public License. It may be distributed and/or modified under the LaTeX Project Public License, version 1.3c or higher. The latest version of this license is at: http://www.latex-project.org/lppl.txt

This work is “author-maintained” (as per LPPL maintenance status)
by Farshad Rasuli.

The repository for the package is located at:  https://github.com/farshadrasuli/iran-bibtex


## Reporting issues
If you want to report any bugs or issues, please use [the issue tracker](https://github.com/farshadrasuli/iran-bibtex/issues). In doing so, please always explain your issue well enough and always include a minimal working example showing the issue.


## Change log
First version release date: 2023/12/12.

v0.1.0 (2023/12/12)
  1. First release on CTAN, and GitHub.
  2. Support `@book` entry only
