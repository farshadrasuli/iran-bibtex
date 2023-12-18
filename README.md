# iran-bibtex — Iran Manual of Style Citation Guide for BibTeX

The iran-bibtex package is a LaTeX package that provides a BibTeX style based on the [Iran Manual of Style](https://imos.irandoc.ac.ir) (1st edn., 2016) guide to Persian, and English information sources.

Numerous examples of the use of this package have been prepared and are available in [the package's GitHub repository](https://github.com/farshadrasuli/iran-bibtex).

A file named `iran-bibtex-cp1256fa.csf` is prepared (based on the [ascii.csf](https://ctan.org/tex-archive/biblio/bibtex/bibtex-x/csf/ascii.csf) file) for this package to sort references alphabetically (to place Persian/Farsi items first, followed by English/Latin items).

This package relies on [natbib](https://ctan.org/pkg/natbib) and [xepersian](https://ctan.org/pkg/xepersian) packages.

## Copyright

Copyright (c) 2023 Farshad Rasuli (<farshad.rasuli@gmail.com>).

This package distributed under the LaTeX Project Public License. It may be distributed and/or modified under the LaTeX Project Public License, version 1.3c or higher. The latest version of this license is at: <http://www.latex-project.org/lppl.txt>.

This work is “author-maintained” (as per LPPL maintenance status)
by Farshad Rasuli.

The package's catalogue page on CTAN is located at: <https://ctan.org/pkg/iran-bibtex>.

The package's archive on CTAN is located at : <https://ctan.org/tex-archive/biblio/bibtex/contrib/iran-bibtex>.

The repository for the package is located at:  <https://github.com/farshadrasuli/iran-bibtex>

## How to use this package

The current version of this package (v0.3.0) supports ten types of entries: `@book`, `@incollection`, `@article`, `@proceedings`, `@inproceedings`, `@conference`, `@mastersthesis`, `@phdthesis`, `@unpublished`, and `@misc`. These types of entries meet the Iran Manual of Style requirements. Other types of entries have the default definition of the LaTeX standards and do not meet the requirements of the Iran Manual of Style.

Recall the package with the `\usepackage[<bibstyle>]{iran-bibtex}` in the preamble of the LaTeX file. The current available `bibstyle` option is `iran`, which uses `iran.bst` BibTeX bibligraphy style file. By recalling the `iran-bibtex` package, there is no need to determine the bibliography style with the `\bibligraphystayle{<bibstyle>}` command anymore. We suggest recalling this package before the `hyperref` package. At the end, recall the `xepersian` package.

To sort Bibliography/References alphabetically, by using `bibtex` for compilation, English/Latin items will be placed first, followed by Persian items. If you want Persian items to be placed first, followed by English/Latin items, you must create a bibliography database (`bib` file) with `utf8` encryption and run `bibtex8 -W -c iran-bibtex-cp1256fa` for compilation.

## Reporting issues

If you want to report any bugs or issues, please use [the issue tracker](https://github.com/farshadrasuli/iran-bibtex/issues). In doing so, please always explain your issue well enough and always include a minimal working example showing the issue.

## Change log

First version (v0.1.0) release date: 2023/12/12. Current version (v0.3.0) release date: 2023/12/18.

* **v0.3.0 (2023/12/18)**

  1. Made some improvements
  2. Fix minor bugs
  3. Support `@mastersthesis` entry was also added
  4. Support `@phdthesis` entry was also added
  5. Support `@unpublished` entry was also added
  6. Support `@misc` entry was also added

* **v0.2.0 (2023/12/15)**

  1. Made some improvements
  2. Support `@article` entry was also added
  3. Support `@incollection` entry was also added
  4. Support `@proceedings` entry was also added
  5. Support `@inproceedings` entry was also added
  6. Support `@conference` entry was also added

* **v0.1.0 (2023/12/12)**

  1. First release on CTAN, and GitHub.
  2. Support `@book` entry only
