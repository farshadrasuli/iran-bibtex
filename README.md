# iran-bibtex — Iran Manual of Style Citation Guide for BibTeX

The iran-bibtex package, designed for LaTeX, provides BibTeX styles in accordance with the guidelines outlined in the [Iran Manual of Style](https://imos.irandoc.ac.ir) (1st edn., 2016)—citation guide to Persian, and English information sources.

A collection of illustrative examples showcasing the usage of this package has been meticulously prepared and is accessible in [the package's GitHub repository](https://github.com/farshadrasuli/iran-bibtex) under the `examples` sub-directory.

To facilitate alphabetical sorting of references, prioritizing Persian/Farsi items ahead of English/Latin ones, a dedicated file named `iran-bibtex-cp1256fa.csf` is provided for use with this package. This file, derived from the [ascii.csf](https://ctan.org/tex-archive/biblio/bibtex/bibtex-x/csf/ascii.csf) file, serves the purpose of arranging references in the desired order.

It's important to note that this package relies on [natbib](https://ctan.org/pkg/natbib) package, and it is automatically loaded.

## Copyright

Copyright (c) 2023-2024 Farshad Rasuli (<farshad.rasuli@gmail.com>).

This package distributed under the LaTeX Project Public License. It may be distributed and/or modified under the LaTeX Project Public License, version 1.3c or higher. The latest version of this license is at: <http://www.latex-project.org/lppl.txt>.

This work is “author-maintained” (as per LPPL maintenance status) by Farshad Rasuli.

Catalog on CTAN: <https://ctan.org/pkg/iran-bibtex>

Archive on CTAN: <https://ctan.org/tex-archive/biblio/bibtex/contrib/iran-bibtex>

Repository on GitHub: <https://github.com/farshadrasuli/iran-bibtex>

## How to use this package

The current version of this package (v0.3.0, and higher) supports ten types of entries: `@book`, `@incollection`, `@article`, `@proceedings`, `@inproceedings`, `@conference`, `@mastersthesis`, `@phdthesis`, `@unpublished`, and `@misc`. These types of entries meet the Iran Manual of Style requirements. Other types of entries have the default definition of the LaTeX standards and do not meet the requirements of the Iran Manual of Style.

### Load package

To use the `iran-bibtex` package in your LaTeX document, simply include the command `\usepackage[<bibstyle>,<options>]{iran-bibtex}` in the preamble.

With this package, there's no need to explicitly set the bibliography style using the `\bibliographystyle{<bibstyle>}` command.

Any additional options specified as `<options>` will be passed to and processed by the [natbib](https://ctan.org/pkg/natbib) package.

For optimal performance, it's recommended to load the `iran-bibtex` package before the `hyperref` package.

### Package's options as `<bibstyle>`

The bibliography styles included in this package are organized into two distinct groups. One set, denoted by names commencing with `iran`, is specifically designed for Persian/Farsi documents and requires the [xepersian](https://ctan.org/pkg/xepersian) package for compilation. The other set, identified by names beginning with `iranlatin`, is customized for English/Latin documents. This set serves as the implementation of the [Iran Manual of Style](https://imos.irandoc.ac.ir) for English/Latin documents.

There are five different type of `<bibstyle>` options as follows:

  1. For Persian documents (produced by [xepersian](https://ctan.org/pkg/xepersian) package)

| No. | Options       | Description |
| :-: | :------------ | :---------- |
|1    |`iran`         | Author-date citation format, with reference items are arranged in alphabetical order. |
|2    |`iran-plain`   | Numerical labeled citation format, with reference items are both alphabetically sorted and numerically labeled. This style is closely resembling the standard `plain` style. |
|3    |`iran-year`    | Author-date citation format, with reference items are arranged in chronological order by year. |
|4    |`iran-plainyr` | Numerical labeled citation format, with reference items are both chronologically by year sorted and numerically labeled. |
|5    |`iran-unsrt`   | Numerical labeled citation format, with reference items are sorted by citation order and numerically labeled. This style is closely resembling the standard `unsrt` style. |

  2. For non-Persian documents (produced by any processor)

| No. | Options            | Description |
| :-: | :----------------- | :---------- |
|1    |`iranlatin`         | Author-date citation format, with reference items are arranged in alphabetical order. |
|2    |`iranlatin-plain`   | Numerical labeled citation format, with reference items are both alphabetically sorted and numerically labeled. This style is closely resembling the standard `plain` style. |
|3    |`iranlatin-year`    | Author-date citation format, with reference items are arranged in chronological order by year. |
|4    |`iranlatin-plainyr` | Numerical labeled citation format, with reference items are both chronologically by year sorted and numerically labeled. |
|5    |`iranlatin-unsrt`   | Numerical labeled citation format, with reference items are sorted by citation order and numerically labeled. This style is closely resembling the standard `unsrt` style. |

### Compilation

During the compilation of a bibliography database file (`bib` file) using the `bibtex` engine, English/Latin items are initially sorted, followed by Persian/Farsi items. To ensure Persian/Farsi items are displayed first, users are advised to choose the `bibtex8` engine, create a bibliography database file (`bib` file) encrypted in `utf8`, and execute the `bibtex8 -W -c iran-bibtex-cp1256fa` command for compilation.

### Citation commands

According to the [natbib](https://ctan.org/pkg/natbib) package user manual, the following commands are provided for citation. The illustrations below apply to the `iranlatin` bibstyle option.

> (Sechzer et al. 1996)
>
> **Bibliography**
>
> Sechzer, Jeri A, S M Pfaffilin, F L Denmark, A Griffin, and S J Blumenthal. 1996. *Women and Mental Health*. Baltimore: John Hopkins Univ Press.

#### Group 1: `\cite` command (parentetical citation)

- `\cite{sechzer1996}`: (Sechzer et al. 1996)
- `\cite[Chap.~2]{sechzer1996}`: (Sechzer et al. 1996, Chap. 2)
- `\cite[see][p.~10]{sechzer1996}`: (see Sechzer et al. 1996, p. 10)
- `\cite*{sechzer1996}`: (Sechzer, Pfaffilin, Denmark, Griffin, and Blumenthal 1996)
- `\cite*[Chap.~2]{sechzer1996}`: (Sechzer, Pfaffilin, Denmark, Griffin, and Blumenthal 1996, Chap. 2)
- `\cite*[see][p.~10]{sechzer1996}`: (see Sechzer, Pfaffilin, Denmark, Griffin, and Blumenthal 1996, p. 10)

#### Group 2: `\citep` command (parentetical citation)

- `\citep{sechzer1996}`: (Sechzer et al. 1996)
- `\citep[Chap.~2]{sechzer1996}`: (Sechzer et al. 1996, Chap. 2)
- `\citep[see][p.~10]{sechzer1996}`: (see Sechzer et al. 1996, p. 10)
- `\citep*{sechzer1996}`: (Sechzer, Pfaffilin, Denmark, Griffin, and Blumenthal 1996)
- `\citep*[Chap.~2]{sechzer1996}`: (Sechzer, Pfaffilin, Denmark, Griffin, and Blumenthal 1996, Chap. 2)
- `\citep*[see][p.~10]{sechzer1996}`: (see Sechzer, Pfaffilin, Denmark, Griffin, and Blumenthal 1996, p. 10)

#### Group 3: `\citet` command (textual citation)

- `\citet{sechzer1996}`: Sechzer et al. (1996)
- `\citet[Chap.~2]{sechzer1996}`: Sechzer et al. (1996, Chap. 2)
- `\citet*{sechzer1996}`: Sechzer, Pfaffilin, Denmark, Griffin, and Blumenthal (1996)
- `\citet*[Chap.~2]{sechzer1996}`: Sechzer, Pfaffilin, Denmark, Griffin, and Blumenthal (1996, Chap. 2)

#### Group 4: Other citation commands

All of the other commads provided by [natbib](https://ctan.org/pkg/natbib) package also work.

## Reporting issues

If you want to report any bugs or issues, please use [the issue tracker](https://github.com/farshadrasuli/iran-bibtex/issues). In doing so, please always explain your issue well enough and always include a minimal working example showing the issue.

## Change log

### Version 0.4.3 (2024/08/4)

  1. Fixing a minor issue that surfaced in the previous update.

### Version 0.4.2 (2024/08/2)

  1. Made some improvements.

### Version 0.4.1 (2024/05/6)

  1. Made some improvements.
  2. Minor bugs have been fixed.

### Version 0.4.0 (2024/01/8)

  1. Implemented several improvements.
  2. Enhanced code quality.
  3. Persian/Farsi items now display the year's extra label with Persian characters.
  4. Made some modifications to the `iran-bibtex-cp1256fa.csf` file.
  5. Introducing a new option: `iran-plain`.
  6. Introducing a new option: `iran-year`.
  7. Introducing a new option: `iran-plainyr`.
  8. Introducing a new option: `iran-unsrt`.
  9. Introducing a new option: `iranlatin`.
  10. Introducing a new option: `iranlatin-plain`.
  11. Introducing a new option: `iranlatin-year`.
  12. Introducing a new option: `iranlatin-plainyr`.
  13. Introducing a new option: `iranlatin-unsrt`.

### Version 0.3.0 (2023/12/18)

  1. Implemented several improvements.
  2. Minor bugs have been fixed.
  3. Added support for `@mastersthesis` entry.
  4. Added support for `@phdthesis` entry.
  5. Added support for `@unpublished` entry.
  6. Added support for `@misc` entry.

### Version 0.2.0 (2023/12/15)

  1. Implemented several improvements
  2. Added support for `@article` entry.
  3. Added support for `@incollection` entry.
  4. Added support for `@proceedings` entry.
  5. Added support for `@inproceedings` entry.
  6. Added support for `@conference` entry.

### Version 0.1.0 (2023/12/12)

  1. First release on CTAN, and GitHub.
  2. Available option: `iran`.
  3. Support for `@book` entry only.
