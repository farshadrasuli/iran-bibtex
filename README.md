# iran-bibtex — Iran Manual of Style Citation Guide for BibTeX
iran-bibtex is a LaTeX package that provides a BibTeX style based on the [Iran Manual of Style](https://imos.irandoc.ac.ir) (1st edn., 2016) guidelines.

Numerous examples of the use of this package have been prepared and are available in the package's GitHub repository.

The bibliography style produced by `makebst` program ([custom-bib](https://ctan.org/pkg/custom-bib) package), then modified to implement Persian/Farsi language and be compatible with the Iran Manual of Style guidelines. A `cp1256fa.csf` file is prepared (based on the [ascii.csf](https://ctan.org/tex-archive/biblio/bibtex/bibtex-x/csf/ascii.csf) file) to sort references alphabetically (Persian/Farsi, then English); so, you must run `bibtex8 -W -c cp1256fa` to compile.

Important note: your bibliography database file (*.bib) must be encoded in `utf8` encryption.

This package relies on [natbib](https://ctan.org/pkg/natbib) package.
