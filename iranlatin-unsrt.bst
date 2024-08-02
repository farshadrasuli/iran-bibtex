%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 
%% This file is “iranlatin-unsrt.bst”, v0.1.2 (2024/08/2)
%% created by modifying “iranlatin.bst” file in accordance with the
%% “Iran Manual of Style Citation Guide” (1st edn., 2016) to support
%% English/Latin only.
%% 
%% 
%% 
%%      Copyright (c) 2023-2024 Farshad Rasuli <farshad.rasuli@gmail.com>
%% 
%% This file can be redistributed and/or modified under the terms
%% of the LaTeX Project Public License version 1.3c, or any later version.
%% The latest version of the License is at: latex-project.org/lppl.txt
%% 
%% This BibTeX bibliography style (bst) file is part of
%% the “iran-bibtex” package.
%% 
%% CTAN catalog: https://ctan.org/pkg/iran-bibtex
%% CTAN archive: https://ctan.org/tex-archive/biblio/bibtex/contrib/iran-bibtex
%% Repository:   https://github.com/farshadrasuli/iran-bibtex
%% Bug tracker:	 https://github.com/farshadrasuli/iran-bibtex/issues
%% 
%% 
%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%-----------------------------------------------------------------------------
%% This bibliography style file is intended for texts in ENGLISH.
%% This is a numbered citation style bibliography. This style file is
%%  based on    natbib.sty   package by Patrick W. Daly.
%% The form of the \bibitem entries is
%%   \bibitem[Jones et al.(1990)]{key}...
%%   \bibitem[Jones et al.(1990)Jones, Baker, and Smith]{key}...
%% The essential feature is that the label (the part in brackets) consists
%% of the author names, as they can appear in the citation, with the year
%% in parentheses following. There must be no space before the opening
%% parenthesis!
%% 
%% The \cite command functions as follows (\cite is equal to \citep command):
%%   \citep{key}              =>   [1]
%%   \citep*{key}             =>   [1]
%%   \citep[chap. 2]{key}     =>   [1, chap. 2]
%%   \citep[e.g.][]{key}      =>   [e.g. 1]
%%   \citep[e.g.][p. 32]{key} =>   [e.g. 1, p. 32]
%%   \citet{key}              =>   Jones et al. [1]
%%   \citet*{key}             =>   Jones, Baker, and Smith [1]
%%   \citeauthor{key}         =>   Jones et al.
%%   \citeauthor*{key}        =>   Jones, Baker, and Smith
%%   \citeyear{key}           =>   1990
%%-----------------------------------------------------------------------------



ENTRY
{
  address
  afterword                  % the added field
  archive
  author
  booktitle
  by                         % the added field
  chapter
  collaboration
  comment                    % the added field
  commentator                % the added field
  compiler                   % the added field
  doi
  edition
  editor
  eid
  eprint
  foreword                   % the added field
  howpublished
  impression                 % the added field
  institution
  introduction               % the added field
  isbn
  issn
  issue                      % the added field
  journal
  key
  language
  month
  note
  number
  numpages
  organization
  pages
  preface                    % the added field
  publisher
  school
  series
  title
  translator                 % the added field
  translateyear              % the added field
  type
  url
  urldate                    % the added field
  volume
  volumes                    % the added field
  year 
}
{}
{
  label
  sort.label
  short.list
}





% Logical operators

FUNCTION {not}
{
    { #0 }
    { #1 }
  if$
}

FUNCTION {and}
{
    'skip$
    { pop$ #0 }
  if$
}

FUNCTION {or}
{
    { pop$ #1 }
    'skip$
  if$
}





% Here are the language-specific definitions for explicit words.
% Each function has a name bbl.xxx where xxx is the English word.

FUNCTION {bbl.afterwordby}
{ "afterword by" }

FUNCTION {bbl.and}
{ "and" }

FUNCTION {bbl.andothers}
{ "and~others" }

FUNCTION {bbl.by}
{ "by" }

FUNCTION {bbl.chapter}
{ "chapter" }

FUNCTION {bbl.comma}
{ "," }

FUNCTION {bbl.commentator}
{ "comm." }

FUNCTION {bbl.commentatedby}
{ "commentated by" }

FUNCTION {bbl.compiler}
{ "comp." }

FUNCTION {bbl.compilers}
{ "comps." }

FUNCTION {bbl.compiledby}
{ "compiled by" }

FUNCTION {bbl.doi}
{ "doi" }

FUNCTION {bbl.dquote}
{ "\enquote{" swap$ * add.period$ "}" * }

FUNCTION {bbl.editor}
{ "ed." }

FUNCTION {bbl.editors}
{ "eds." }

FUNCTION {bbl.editedby}
{ "edited by" }

FUNCTION {bbl.edition}
{ "edn." }

FUNCTION {bbl.eidpp}
{ "pages" }

FUNCTION {bbl.etal}
{ "et~al." }

FUNCTION {bbl.forewordby}
{ "forword by" }

FUNCTION {bbl.impression}
{ "imp." }

FUNCTION {bbl.in}
{ "in" }

FUNCTION {bbl.incollaborationwith}
{ "in collaboration with" }

FUNCTION {bbl.introby}
{ "introduction by" }

FUNCTION {bbl.isbn}
{ "isbn" }

FUNCTION {bbl.issn}
{ "issn" }

FUNCTION {bbl.mthesis}
{ "Master's thesis" }

FUNCTION {bbl.nr}
{ "no." }

FUNCTION {bbl.number}
{ "no." }

FUNCTION {bbl.of}
{ "of" }

FUNCTION {bbl.page}
{ "p." }

FUNCTION {bbl.pages}
{ "pp." }

FUNCTION {bbl.prefaceby}
{ "preface by" }

FUNCTION {bbl.phdthesis}
{ "PhD dissertation" }

FUNCTION {bbl.retrieved}
{ "retrieved" }

FUNCTION {bbl.semicolon}
{ ";" }

FUNCTION {bbl.techrep}
{ "tech. rep." }

FUNCTION {bbl.thesis}
{ "Thesis" }

FUNCTION {bbl.translator}
{ "trans." }

FUNCTION {bbl.translators}
{ "trans." }

FUNCTION {bbl.translatedby}
{ "translated by" }

FUNCTION {bbl.url}
{ "url" }

FUNCTION {bbl.volume}
{ "vol." }

FUNCTION {bbl.volumes}
{ "vols." }





% Macro for abbreviation of month

MACRO {jan} {"Jan"}

MACRO {feb} {"Feb"}

MACRO {mar} {"Mar"}

MACRO {apr} {"Apr"}

MACRO {may} {"May"}

MACRO {jun} {"Jun"}

MACRO {jul} {"Jul"}

MACRO {aug} {"Aug"}

MACRO {sep} {"Sep"}

MACRO {oct} {"Oct"}

MACRO {nov} {"Nov"}

MACRO {dec} {"Dec"}





% Functions to declare position

INTEGERS { output.state before.all mid.sentence after.sentence after.block }

FUNCTION {init.state.consts}
{
  #0 'before.all :=
  #1 'mid.sentence :=
  #2 'after.sentence :=
  #3 'after.block :=
}



% Functions to print output

STRINGS { s t }

FUNCTION {output.nonnull}
{
  's :=
  output.state mid.sentence =
    { bbl.comma * " " * write$ }
    {
      output.state after.block =
        {
          add.period$ write$
          newline$
          "\newblock " write$
        }
        {
          output.state before.all =
            'write$
            { add.period$ write$ " " write$ }
          if$
        }
      if$
      mid.sentence 'output.state :=
    }
  if$
  s
}

FUNCTION {output}
{
  duplicate$ empty$
    'pop$
    'output.nonnull
  if$
}

FUNCTION {output.check}
{
  't :=
  duplicate$ empty$
    { pop$ "empty " t * " in " * cite$ * warning$ }
    'output.nonnull
  if$
}





% Functions to check and warn bibinfo

FUNCTION {bibinfo.check}
{
  swap$
  duplicate$ missing$
    {
      pop$ pop$
      ""
    }
    {
      duplicate$ empty$
        {
          swap$ pop$
        }
        {
          swap$
          pop$
        }
      if$
    }
  if$
}


FUNCTION {bibinfo.warn}
{
  swap$
  duplicate$ missing$
    {
      swap$ "missing " swap$ * " in " * cite$ * warning$ pop$
      ""
    }
    {
      duplicate$ empty$
        {
          swap$ "empty " swap$ * " in " * cite$ * warning$
        }
        {
          swap$
          pop$
        }
      if$
    }
  if$
}



FUNCTION {either.or.check}
{
  empty$
    'pop$
    { "can't use both " swap$ * " fields in " * cite$ * warning$ }
  if$
}





% Functions to control the print format of entries

FUNCTION {new.block}
{
  output.state before.all =
    'skip$
    { after.block 'output.state := }
  if$
}



FUNCTION {new.block.checkb}
{
  empty$
  swap$ empty$
  and
    'skip$
    'new.block
  if$
}



FUNCTION {new.sentence}
{
  output.state after.block =
    'skip$
    {
      output.state before.all =
        'skip$
        { after.sentence 'output.state := }
      if$
    }
  if$
}



FUNCTION {add.blank}
{
  " " * before.all 'output.state :=
}



FUNCTION {capitalize}
{ "u" change.case$ "t" change.case$ }



FUNCTION {date.block}
{
  new.block
}



FUNCTION {emphasize}
{
  duplicate$ empty$
    { pop$ "" }
    { "{\it " swap$ * "}" * }
  if$
}



FUNCTION {field.or.null}
{
  duplicate$ empty$
    { pop$ "" }
    'skip$
  if$
}



FUNCTION {no.blank.or.punct}
{
  "\hspace{0pt}" * before.all 'output.state :=
}



FUNCTION {non.stop}
{
  duplicate$
  "}" * add.period$
  #-1 #1 substring$ "." =
}



STRINGS {z}

FUNCTION {remove.dots}
{
  'z :=
  ""
  {
    z empty$ not
  }
  {
    z #1 #2 substring$
    duplicate$ "\." =
      {
        z #3 global.max$ substring$ 'z :=  *
      }
      {
        pop$
        z #1 #1 substring$
        z #2 global.max$ substring$ 'z :=
        duplicate$ "." =
          'pop$
          { * }
        if$
      }
    if$
  }
  while$
}



FUNCTION {separate.by.space}
{ " " swap$ * " " * }



FUNCTION {space.word}
{ " " swap$ * " " * }



FUNCTION {tie.or.space.prefix}
{
  duplicate$ text.length$ #3 <
    { "~" }
    { " " }
  if$
  swap$
}



FUNCTION {word.in}
{
  output.state mid.sentence =
    { bbl.in " " * }
    { bbl.in capitalize " " * }
  if$
}





% Functions to format names

INTEGERS { nameptr namesleft numnames }

STRINGS  { bibinfo}

FUNCTION {format.names}
{
  'bibinfo :=
  duplicate$ empty$
    'skip$
    {
      's :=
      "" 't :=
      #1 'nameptr :=
      s num.names$ 'numnames :=
      numnames 'namesleft :=
      {
        namesleft #0 >
      }
      {
        s nameptr
        duplicate$ #1 >
          { "{ff~}{vv~}{ll}{, jj}" }
          { "{vv~}{ll}{, ff}{, jj}" }
        if$
        format.name$
        bibinfo bibinfo.check
        't :=
        nameptr #1 >
          {
            namesleft #1 >
              {
                bbl.comma * " " * t *
              }
              {
                s nameptr "{ll}" format.name$ duplicate$ "others" =
                  { 't := }
                  { pop$ }
                if$
                bbl.comma *
                t "others" =
                  {
                    " " * bbl.etal *
                  }
                  {
                    bbl.and
                    separate.by.space * t *
                  }
                if$
              }
            if$
          }
          't
        if$
        nameptr #1 + 'nameptr :=
        namesleft #1 - 'namesleft :=
      }
      while$
    }
  if$
}



FUNCTION {format.names.ed}
{
  'bibinfo :=
  duplicate$ empty$
    'skip$
    {
      's :=
      "" 't :=
      #1 'nameptr :=
      s num.names$ 'numnames :=
      numnames 'namesleft :=
      {
        namesleft #0 >
      }
      {
        s nameptr
        "{ff~}{vv~}{ll}{, jj}"
        format.name$
        bibinfo bibinfo.check
        't :=
        nameptr #1 >
          {
            namesleft #1 >
              {
                bbl.comma * " " * t *
              }
              {
                s nameptr "{ll}" format.name$
                duplicate$ "others" =
                  { 't := }
                  { pop$ }
                if$
                bbl.comma *
                t "others" =
                  {

                    " " * bbl.etal *
                  }
                  {
                    bbl.and
                    separate.by.space * t *
                  }
                if$
              }
            if$
          }
          't
        if$
        nameptr #1 + 'nameptr :=
        namesleft #1 - 'namesleft :=
      }
      while$
    }
  if$
}



FUNCTION {format.key}
{
  empty$
    { key field.or.null }
    { "" }
  if$
}



FUNCTION {n.dashify}
{
  't :=
  ""
  {
    t empty$ not
  }
  {
    t #1 #1 substring$
    "-" =
      {
        t #1 #2 substring$
        "--" = not
          {
            "--" *
            t #2 global.max$ substring$ 't :=
          }
          {
            {
              t #1 #1 substring$ "-" =
            }
            {
              "-" *
              t #2 global.max$ substring$ 't :=
            }
            while$
          }
        if$
      }
      {
        t #1 #1 substring$ *
        t #2 global.max$ substring$ 't :=
      }
    if$
  }
  while$
}



STRINGS {oldname}

FUNCTION {name.or.dash}
{
  's :=
  oldname empty$
    { s 'oldname := s }
    {
      s oldname =
        { "---{}---{}---" }
        { s 'oldname := s }
      if$
    }
  if$
}





% Functions to create the short name label for the entry

FUNCTION {format.short.label.names}
{
  's :=
  "" 't :=
  s #1 "{vv~}{ll}" format.name$
  s num.names$ #3 >
    {
      " " * bbl.etal *
    }
    {
      s num.names$ #2 <
        'skip$
        {
          s num.names$ #3 <
            {
              s #2 "{ff }{vv }{ll}{ jj}" format.name$ "others" =
                {
                  " " * bbl.etal *
                }
                {
                  bbl.comma * bbl.and separate.by.space * s #2 "{vv~}{ll}" format.name$ *
                }
              if$
            }
            {
              s #3 "{ff }{vv }{ll}{ jj}" format.name$ "others" =
                {
                  " " * bbl.etal *
                }
                {
                  bbl.comma * " " * s #2 "{vv~}{ll}" format.name$ *
                  bbl.comma * bbl.and separate.by.space * s #3 "{vv~}{ll}" format.name$ *
                }
              if$
            }
          if$
        }
      if$
    }
  if$
}



FUNCTION {author.key.short.label.names}
{
  author empty$ not
    { author format.short.label.names }
    {
      key empty$ not
        'key
        { cite$ #1 #3 substring$ }
      if$
    }
  if$
}



FUNCTION {author.editor.key.short.label.names}
{
  author empty$ not
    { author format.short.label.names }
    {
      editor empty$ not
        { editor format.short.label.names }
        {
          key empty$ not
            'key
            { cite$ #1 #3 substring$ }
          if$
        }
      if$
    }
  if$
}



FUNCTION {editor.key.short.label.names}
{
  editor empty$ not
    { editor format.short.label.names }
    {
      key empty$ not
        'key
        { cite$ #1 #3 substring$ }
      if$
    }
  if$
}



FUNCTION {book.short.label.names}
{
  author empty$ not
    { author format.short.label.names }
    {
      compiler empty$ not
        { compiler format.short.label.names }
        {
          editor empty$ not
            { editor format.short.label.names }
            {
              translator empty$ not
                { translator format.short.label.names }
                {
                  key empty$ not
                    'key
                    { cite$ #1 #3 substring$ }
                  if$
                }
              if$
            }
          if$
        }
      if$
    }
  if$
}



FUNCTION {incoll.short.label.names}
{
  author empty$ not
    { author format.short.label.names }
    {
      compiler empty$ not
        { compiler format.short.label.names }
        {
          editor empty$ not
            { editor format.short.label.names }
            {
              translator empty$ not
                { translator format.short.label.names }
                {
                  key empty$ not
                    'key
                    { cite$ #1 #3 substring$ }
                  if$
                }
              if$
            }
          if$
        }
      if$
    }
  if$
}



FUNCTION {article.short.label.names}
{
  author empty$ not
    { author format.short.label.names }
    {
      editor empty$ not
        { editor format.short.label.names }
        {
          translator empty$ not
            { translator format.short.label.names }
            {
              key empty$ not
                'key
                { cite$ #1 #3 substring$ }
              if$
            }
          if$
        }
      if$
    }
  if$
}



FUNCTION {proc.short.label.names}
{
  editor empty$ not
    { editor format.short.label.names }
    {
      compiler empty$ not
        { compiler format.short.label.names }
        {
          translator empty$ not
            { translator format.short.label.names }
            {
              key empty$ not
                'key
                { cite$ #1 #3 substring$ }
              if$
            }
          if$
        }
      if$
    }
  if$
}



FUNCTION {inproc.short.label.names}
{
  author empty$ not
    { author format.short.label.names }
    {
      translator empty$ not
        { translator format.short.label.names }
        {
          key empty$ not
            'key
            { cite$ #1 #3 substring$ }
          if$
        }
      if$
    }
  if$
}



FUNCTION {conf.short.label.names}
{
  author empty$ not
    { author format.short.label.names }
    {
      translator empty$ not
        { translator format.short.label.names }
        {
          key empty$ not
            'key
            { cite$ #1 #3 substring$ }
          if$
        }
      if$
    }
  if$
}



FUNCTION {make.short.label.names}
{
  type$ "book" =
    'book.short.label.names
    {
      type$ "incollection" =
        'incoll.short.label.names
        {
          type$ "article" =
            'article.short.label.names
            {
              type$ "proceedings" =
                'proc.short.label.names
                {
                  type$ "inproceedings" = 
                    'inproc.short.label.names
                    {
                      type$ "conference" =
                        'conf.short.label.names
                        {
                          type$ "inbook" =
                            'author.editor.key.short.label.names
                            'author.key.short.label.names
                          if$
                        }
                      if$
                    }
                  if$
                }
              if$
            }
          if$
        }
      if$
    }
  if$
  'short.list :=
}





% Functions to create the full name label for the entry

FUNCTION {format.full.label.names}
{
  's :=
  "" 't :=
  #1 'nameptr :=
  s num.names$ 'numnames :=
  numnames 'namesleft :=
  {
    namesleft #0 >
  }
  {
    s nameptr
    "{vv~}{ll}" format.name$
    't :=
    nameptr #1 >
      {
        namesleft #1 >
          {
            bbl.comma * " " * t *
          }
          {
            s nameptr "{ll}" format.name$
            duplicate$ "others" =
              { 't := }
              { pop$ }
            if$
            t "others" =
              {
                " " * bbl.etal *
              }
              {
                bbl.comma * bbl.and separate.by.space * t *
              }
            if$
          }
        if$
      }
      't
    if$
    nameptr #1 + 'nameptr :=
    namesleft #1 - 'namesleft :=
  }
  while$
}



FUNCTION {author.key.full.label.names}
{
  author empty$ not
    { author format.full.label.names }
    {
      key empty$ not
        'key
        { cite$ #1 #3 substring$ }
      if$
    }
  if$
}



FUNCTION {author.editor.key.full.label.names}
{
  author empty$ not
    { author format.full.label.names }
    {
      editor empty$ not
        { editor format.full.label.names }
        {
          key empty$ not
            'key
            { cite$ #1 #3 substring$ }
          if$
        }
      if$
    }
  if$
}



FUNCTION {editor.key.full.label.names}
{
 editor empty$ not
    { editor format.full.label.names }
    {
      key empty$ not
        'key
        { cite$ #1 #3 substring$ }
      if$
    }
  if$
}



FUNCTION {book.full.label.names}
{
  author empty$ not
    { author format.full.label.names }
    {
      compiler empty$ not
        { compiler format.full.label.names }
        {
          editor empty$ not
            { editor format.full.label.names }
            {
              translator empty$ not
                { translator format.full.label.names }
                {
                  key empty$ not
                    'key
                    { cite$ #1 #3 substring$ }
                  if$
                }
              if$
            }
          if$
        }
      if$
    }
  if$
}



FUNCTION {incoll.full.label.names}
{
  author empty$ not
    { author format.full.label.names }
    {
      compiler empty$ not
        { compiler format.full.label.names }
        {
          editor empty$ not
            { editor format.full.label.names }
            {
              translator empty$ not
                { translator format.full.label.names }
                {
                  key empty$ not
                    'key
                    { cite$ #1 #3 substring$ }
                  if$
                }
              if$
            }
          if$
        }
      if$
    }
  if$
}



FUNCTION {article.full.label.names}
{
  author empty$ not
    { author format.full.label.names }
    {
      editor empty$ not
        { editor format.full.label.names }
        {
          translator empty$ not
            { translator format.full.label.names }
            {
              key empty$ not
                'key
                { cite$ #1 #3 substring$ }
              if$
            }
          if$
        }
      if$
    }
  if$
}



FUNCTION {proc.full.label.names}
{
  editor empty$ not
    { editor format.full.label.names }
    {
      compiler empty$ not
        { compiler format.full.label.names }
        {
          translator empty$ not
            { translator format.full.label.names }
            {
              key empty$ not
                'key
                { cite$ #1 #3 substring$ }
              if$
            }
          if$
        }
      if$
    }
  if$
}



FUNCTION {inproc.full.label.names}
{
  author empty$ not
    { author format.full.label.names }
    {
      translator empty$ not
        { translator format.full.label.names }
        {
          key empty$ not
            'key
            { cite$ #1 #3 substring$ }
          if$
        }
      if$
    }
  if$
}



FUNCTION {conf.full.label.names}
{
  author empty$ not
    { author format.full.label.names }
    {
      translator empty$ not
        { translator format.full.label.names }
        {
          key empty$ not
            'key
            { cite$ #1 #3 substring$ }
          if$
        }
      if$
    }
  if$
}



FUNCTION {make.full.label.names}
{
  type$ "book" =
    'book.full.label.names
    {
      type$ "incollection" =
        'incoll.full.label.names
        {
          type$ "article" =
            'article.full.label.names
            {
              type$ "proceedings" =
                'proc.full.label.names
                {
                  type$ "inproceedings" = 
                    'inproc.full.label.names
                    {
                      type$ "conference" =
                        'conf.full.label.names
                        {
                          type$ "inbook" =
                            'author.editor.key.full.label.names
                            'author.key.full.label.names
                          if$
                        }
                      if$
                    }
                  if$
                }
              if$
            }
          if$
        }
      if$
    }
  if$
}





% Functions to create the label of the entry

FUNCTION {calc.label}
{
  make.short.label.names
  short.list "(" *
  year duplicate$ empty$
    { pop$ "" }
    'skip$
  if$
  *
  'label :=
}





% Functions to open, and close the bibitem

FUNCTION {begin.bibitem}
{
  newline$
  "\bibitem[{" write$
  label write$
  ")"
  make.full.label.names duplicate$ short.list =
    { pop$ }
    { * }
  if$
  "}]{" * write$
  cite$ write$
  "}" write$
  newline$
  ""
  before.all 'output.state :=
}



FUNCTION {end.bibitem}
{
  add.period$ write$
  newline$
}





% Functions to format fields

FUNCTION {field.afterword}
{
  afterword empty$ not
    {
      afterword "afterword" format.names.ed
      bbl.afterwordby capitalize " " * swap$ *
    }
    { "" }
  if$
}



FUNCTION {field.author}
{ author "author" format.names }



FUNCTION {field.booktitle}
{
  booktitle "booktitle" bibinfo.check
  emphasize
}



FUNCTION {field.by}
{
  by empty$ not
    {
      by "by" format.names.ed
      bbl.by " " * swap$ *
    }
    { "" }
  if$
}



FUNCTION {field.collaboration}
{
  collaboration empty$ not
    {
      collaboration "collaboration" format.names.ed
      bbl.incollaborationwith capitalize " " * swap$ *
    }
    { "" }
  if$
}



FUNCTION {field.comment}
{
  comment
}



FUNCTION {field.commentator}
{
  commentator empty$ not
    {
      commentator "commentator" format.names.ed
      bbl.commentatedby capitalize " " * swap$ *
    }
    { "" }
  if$
}



FUNCTION {get.bbl.compiler}
{
  compiler num.names$ #1 >
    'bbl.compilers
    'bbl.compiler
  if$
}

FUNCTION {field.compiler}
{
  compiler "compiler" format.names
  duplicate$ empty$
    'skip$
    {
      bbl.comma * " " * get.bbl.compiler *
    }
  if$
}



FUNCTION {field.compiler.compiledby}
{
  compiler empty$ not
    {
      compiler "compiler" format.names.ed
      bbl.compiledby capitalize " " * swap$ *
    }
    { "" }
  if$
}



FUNCTION {field.doi}
{
  doi empty$
    { "" }
    {
      bbl.doi "u" change.case$ ":~\doi{" * doi * "}" *
    }
  if$
}



FUNCTION {field.edition}
{
  edition duplicate$ empty$
    'skip$
    {
      output.state mid.sentence =
        { "l" }
        { "t" }
      if$
      change.case$
      "edition" bibinfo.check
      " " * bbl.edition *
    }
  if$
}



FUNCTION {get.bbl.editor}
{
  editor num.names$ #1 >
    'bbl.editors
    'bbl.editor
  if$
}

FUNCTION {field.editor}
{
  editor "editor" format.names
  duplicate$ empty$
    'skip$
    {
      bbl.comma * " " * get.bbl.editor *
    }
  if$
}



FUNCTION {field.editor.editedby}
{
  editor empty$ not
    {
      editor "editor" format.names.ed
      bbl.editedby capitalize " " * swap$ *
    }
    { "" }
  if$
}



FUNCTION {field.eprint}
{
  eprint duplicate$ empty$
    'skip$
    {
      "\eprint"
      archive empty$
        'skip$
        { "[" * archive * "]" * }
      if$
      "{" * swap$ * "}" *
    }
  if$
}



FUNCTION {field.howpublished}
{
  howpublished
}



FUNCTION {field.impression}
{
  impression duplicate$ empty$ not
    {
      output.state mid.sentence =
        { "l" }
        { "t" }
      if$
      change.case$
      " " * bbl.impression *
    }
    'skip$
  if$
}



FUNCTION {field.introduction}
{
  introduction empty$ not
    {
      introduction "introduction" format.names.ed
      bbl.introby capitalize " " * swap$ *
    }
    { "" }
  if$
}



FUNCTION {field.isbn}
{
  isbn "isbn" bibinfo.check
  duplicate$ empty$
    'skip$
    {
      bbl.isbn "u" change.case$ ": " * swap$ *
    }
  if$
}



FUNCTION {field.issn}
{
  issn "issn" bibinfo.check
  duplicate$ empty$
    'skip$
      {
        bbl.issn "u" change.case$ ": " * swap$ *
      }
  if$
}



FUNCTION {field.note}
{
  note empty$ not
    {
      note #1 #1 substring$
      duplicate$ "{" =
        'skip$
        {
          output.state mid.sentence =
            { "l" }
            { "u" }
          if$
          change.case$
        }
      if$
      note #2 global.max$ substring$ * "note" bibinfo.check
    }
    { "" }
  if$
}



FUNCTION {field.organization}
{
  organization "organization" bibinfo.check
}



INTEGERS { multiresult }

FUNCTION {field.pages.check.multipage}
{
  't :=
  #0 'multiresult :=
  {
    multiresult not
    t empty$ not
    and
  }
  {
    t #1 #1 substring$
    duplicate$ "-" =
    swap$ duplicate$ "," =
    swap$ "+" =
    or or
      { #1 'multiresult := }
      { t #2 global.max$ substring$ 't := }
    if$
  }
  while$
  multiresult
}



FUNCTION {field.pages}
{
  pages duplicate$ empty$
    'skip$
    {
      duplicate$ field.pages.check.multipage
        {
          n.dashify
        }
        {
        }
      if$
      "pages" bibinfo.check
    }
  if$
}



FUNCTION {field.preface}
{
  preface empty$ not
    {
      preface "preface" format.names.ed
      bbl.prefaceby capitalize " " * swap$ *
    }
    { "" }
  if$
}



FUNCTION {field.title}
{
  title
  duplicate$ empty$
    'skip$
    { bbl.dquote }
  if$
}



FUNCTION {field.btitle}
{
  title "title" bibinfo.check
  duplicate$ empty$
    'skip$
    { emphasize }
  if$
}



FUNCTION {field.title.dqoute}
{
  title
  duplicate$ empty$
    'skip$
    { bbl.dquote }
  if$
}



FUNCTION {field.title.emph}
{
  title "title" bibinfo.check
  duplicate$ empty$
    'skip$
    { emphasize }
  if$
}



FUNCTION {get.bbl.translator}
{
  translator num.names$ #1 >
    'bbl.translators
    'bbl.translator
  if$
}

FUNCTION {field.translator}
{
  translator "translator" format.names
  duplicate$ empty$
    'skip$
    {
      bbl.comma * " " * get.bbl.translator *
    }
  if$
}


FUNCTION {field.translateyear}
{
  translateyear empty$ not
    {
      translateyear
    }
    { "" }
  if$
  before.all 'output.state :=
  after.sentence 'output.state :=
}



FUNCTION {field.translator.translatedby}
{
  translator empty$ not
    {
      translator "translator" format.names.ed
      bbl.translatedby capitalize " " * swap$ *
    }
    { "" }
  if$
}



FUNCTION {field.url}
{
  url duplicate$ empty$
    { pop$ "" }
    {
      bbl.url "u" change.case$ ":~\url{" * swap$ * "}" *
    }
  if$
}



FUNCTION {field.urldate}
{
  urldate duplicate$ empty$
    { pop$ "" }
    { bbl.retrieved capitalize " " * swap$ * }
  if$
}



FUNCTION {field.bvolume}
{
  volume empty$
    { "" }
    {
      bbl.volume volume tie.or.space.prefix
      "volume" bibinfo.check * *
      series "series" bibinfo.check
      duplicate$ empty$
        'pop$
        { emphasize ", " * swap$ * }
      if$
      "volume and number" number either.or.check
    }
  if$
}



FUNCTION {field.year}
{
  year "year" bibinfo.check
  duplicate$ empty$
    {
    }
    'skip$
  if$
  before.all 'output.state :=
  after.sentence 'output.state :=
}



FUNCTION {in.ed.field.booktitle} % NOT USED
{
  field.booktitle
  duplicate$ empty$
    'skip$
    {
      field.bvolume
      duplicate$ empty$
        'pop$
        { bbl.comma " " * swap$ * * }
      if$
      editor "editor" format.names.ed
      duplicate$ empty$
        'pop$
        {
          bbl.editedby capitalize " " * swap$ *
          swap$
          add.period$ " " * swap$ *
        }
      if$
      word.in swap$ *
    }
  if$
}





% Functions to format combined fields

FUNCTION {fields.journal.pages}
{
  pages duplicate$ empty$ 'pop$
    {
      swap$ duplicate$ empty$
        {
          pop$ pop$ field.pages
        }
        {
          ": " *
          swap$
          n.dashify
          "pages" bibinfo.check
          *
        }
      if$
    }
  if$
}



FUNCTION {fields.journal.eid}
{
  eid "eid" bibinfo.check
  duplicate$ empty$
    'pop$
    {
      swap$
      duplicate$ empty$
        'skip$
        {
          ": " *
        }
      if$
      swap$ *
      numpages empty$
        'skip$
        {
          bbl.eidpp numpages tie.or.space.prefix
          "numpages" bibinfo.check * *
          " (" swap$ * ")" * *
        }
      if$
    }
  if$
}


FUNCTION {fields.number.series}
{
  volume empty$
    {
      number empty$
        { series field.or.null }
        {
          series empty$
            { number "number" bibinfo.check }
            {
              output.state mid.sentence =
                { bbl.number }
                { bbl.number capitalize }
              if$
              number tie.or.space.prefix "number" bibinfo.check * *
              bbl.in space.word *
              series "series" bibinfo.check *
            }
          if$
        }
      if$
    }
    { "" }
  if$
}



FUNCTION {fields.org.or.pub}
{
  't :=
  ""
  address empty$ t empty$ and
    'skip$
    {
      address "address" bibinfo.check *
      t empty$
        'skip$
        {
          address empty$
            'skip$
            { ": " * }
          if$
          t *
        }
      if$
    }
  if$
}



FUNCTION {fields.publisher.address}
{
  publisher "publisher" bibinfo.check fields.org.or.pub
}



FUNCTION {fields.organization.address}
{
  organization "organization" bibinfo.check fields.org.or.pub
}



FUNCTION {fields.tr.number}
{
  number "number" bibinfo.check
  type duplicate$ empty$
    { pop$ bbl.techrep }
    'skip$
  if$
  "type" bibinfo.check
  swap$ duplicate$ empty$
    { pop$ "t" change.case$ }
    { tie.or.space.prefix * * }
  if$
}



FUNCTION {fields.vol.num.pages}
{
  volume field.or.null
  duplicate$ empty$
    'skip$
    {
      "volume" bibinfo.check
    }
  if$
  number "number" bibinfo.check
  duplicate$ empty$
    'skip$
    {
      swap$
      duplicate$ empty$
        { "there's a number but no volume in " cite$ * warning$ }
        'skip$
      if$
      swap$
      "~(" swap$ * ")" *
    }
  if$
  *
  eid empty$
    { fields.journal.pages }
    { fields.journal.eid }
  if$
}



FUNCTION {fields.chapter.pages}
{
  chapter empty$
    'field.pages
    {
      type empty$
        { bbl.chapter }
        {
          type "l" change.case$
          "type" bibinfo.check
        }
      if$
      chapter tie.or.space.prefix
      "chapter" bibinfo.check
      * *
      pages empty$
        'skip$
        { bbl.comma * " " * field.pages * }
      if$
    }
  if$
}





% Functions to format combined fields for specific entry

FUNCTION {book.field.crossref}
{
  volume duplicate$ empty$
    {
      "empty volume in " cite$ * "'s crossref of " * crossref * warning$
      pop$ word.in
    }
    {
      bbl.volume
      capitalize
      swap$ tie.or.space.prefix "volume" bibinfo.check * * bbl.of separate.by.space *
    }
  if$
  " \cite{" * crossref * "}" *
}



FUNCTION {book.fields.volume.series.number}
{
  volume empty$ not
    {
      volumes empty$ not
        {
          series empty$ not
            {
              number empty$ not
                {
                  bbl.volume capitalize "~" * volume *
                  " " * bbl.of * " " * volumes * add.period$
                  " " * series emphasize *
                  " " * number *
                }
                {
                  bbl.volume capitalize "~" * volume *
                  " " * bbl.of * " " * volumes * add.period$
                  " " * series emphasize *
                }
              if$
            }
            {
              number empty$ not
                {
                  bbl.volume capitalize "~" * volume *
                  " " * bbl.of * " " * volumes * add.period$
                  " " * bbl.number * "~" * number *
                }
                {
                  bbl.volume capitalize "~" * volume *
                  " " * bbl.of * " " * volumes * 
                }
              if$
            }
          if$
        }
        {
          series empty$ not
            {
              number empty$ not
                {
                  bbl.volume capitalize "~" * volume *
                  " " * bbl.of * " " * series emphasize *
                  " " * number *
                }
                {
                  bbl.volume capitalize "~" * volume *
                  " " * bbl.of * " " * series emphasize *
                }
              if$
            }
            {
              number empty$ not
                {
                  bbl.volume capitalize "~" * volume * add.period$
                  " " * bbl.number * "~" * number *
                }
                {
                  bbl.volume capitalize "~" * volume * add.period$
                }
              if$
            }
          if$
        }
      if$
    }
    {
      volumes empty$ not
        {
          series empty$ not
            {
              number empty$ not
                {
                  volumes "~" * bbl.volumes * add.period$
                  " " * series *
                  " " * number *
                }
                {
                  volumes "~" * bbl.volumes * add.period$
                  " " * series *
                }
              if$
            }
            {
              number empty$ not
                {
                  volumes "~" * bbl.volumes * add.period$
                  " " * bbl.number * "~" * number *
                }
                {
                  volumes "~" * bbl.volumes * add.period$
                }
              if$
            }
          if$
        }
        {
          series empty$ not
            {
              number empty$ not
                {
                  series
                  " " * number *
                }
                {
                  series
                }
              if$
            }
            {
              number empty$ not
                {
                  bbl.number "~" * number *
                }
                {
                  ""
                }
              if$
            }
          if$
        }
      if$
    }
  if$
}



FUNCTION {incoll.fields.chapter.booktitle.volume.pages}
{
  booktitle empty$ not
    {
      chapter empty$ not
        {
          bbl.chapter capitalize "~" * chapter *
          " " * bbl.in * " " * field.booktitle *
          pages empty$ not
            {
              bbl.comma * " " * pages * add.period$
            }
            {
              add.period$
            }
          if$
          volume empty$ not
            {
              volumes empty$ not
                {
                  " " * bbl.volume capitalize * "~" * volume * " " * bbl.of * " " * volumes * add.period$
                }
                {
                  " " * bbl.volume capitalize * "~" * volume * add.period$
                }
              if$
            }
            {
              volumes empty$ not
                {
                  " " * volumes * "~" * bbl.volumes * add.period$
                }
                {
                  skip$
                }
              if$
            }
          if$
        }
        {
          word.in field.booktitle *
          pages empty$ not
            {
              volume empty$ not
                {
                  volumes empty$ not
                    {
                      " " * volume * ": " * pages * add.period$
                      " " * volumes * "~" * bbl.volumes * add.period$
                    }
                    {
                      " " * volume * ": " * pages * add.period$
                    }
                  if$
                }
                {
                  volumes empty$ not
                    {
                      bbl.comma * " " * pages * add.period$
                      " " * volumes * "~" * bbl.volumes * add.period$
                    }
                    {
                      bbl.comma * " " * pages * add.period$
                    }
                  if$
                }
              if$
            }
            {
              add.period$
              volume empty$ not
                {
                  volumes empty$ not
                    {
                      " " * bbl.volume capitalize * "~" * volume *
                      " " * bbl.of * " " * volumes * add.period$
                    }
                    {
                      " " * bbl.volume capitalize * "~" * volume * add.period$
                    }
                  if$
                }
                {
                  volumes empty$ not
                    {
                      " " * volumes * "~" * bbl.volumes * add.period$
                    }
                    {
                      skip$
                    }
                  if$
                }
              if$
            }
          if$
        }
      if$
    }
    {
      ""
    }
  if$
}



INTEGERS { field.series.emph }
FUNCTION {incoll.fields.series.number}
{
  author empty$ not
    {
      translator empty$ not
        { #1 'field.series.emph := }
        {
          edition empty$ not
            { #1 }
            { #0 }
          if$
          impression empty$ not
            { #1 }
            { #0 }
          if$
          + 'field.series.emph :=
        }
      if$
    }
    {
      compiler empty$ not
        {
          translator empty$ not
            { #1 'field.series.emph := }
            {
              edition empty$ not
                { #1 }
                { #0 }
              if$
              impression empty$ not
                { #1 }
                { #0 }
              if$
              + 'field.series.emph :=
            }
          if$
        }
        {
          editor empty$ not
            {
              translator empty$ not
                { #1 'field.series.emph := }
                {
                  edition empty$ not
                    { #1 }
                    { #0 }
                  if$
                  impression empty$ not
                    { #1 }
                    { #0 }
                  if$
                  + 'field.series.emph :=
                }
              if$
            }
            {
              edition empty$ not
                { #1 }
                { #0 }
              if$
              impression empty$ not
                { #1 }
                { #0 }
              if$
              + 'field.series.emph :=
            }
          if$
        }
      if$
    }
  if$
  series empty$ not
    {
      field.series.emph #0 >
        {
          number empty$ not
            { series emphasize " " * number * }
            { series emphasize }
          if$
        }
        {
          number empty$ not
            { series " " * number * }
            { series }
          if$
        }
      if$
    }
    {
      number empty$ not
        { bbl.number capitalize "~" * number * }
        { "" }
      if$
    }
  if$
}



FUNCTION {incoll.field.crossref}
{
  word.in " \cite{" * crossref * "}" *
}



FUNCTION {article.field.crossref}
{
  word.in
  " \cite{" * crossref * "}" *
}



FUNCTION {article.field.journal}
{
  journal remove.dots emphasize
}



FUNCTION {article.fields.jour.issn.vol.num.pp}
{
  journal empty$ not
    {
      issue empty$ not
        { issue bbl.comma * " " *}
        { "" }
      if$
      article.field.journal *
      volume empty$ not
        {
          number empty$ not
            {
              pages empty$ not
                {
                  " " * volume * "~" *
                  "(" * number * ")" * ": " *
                  pages *
                }
                {
                  " " * volume * bbl.comma *
                  " " * bbl.number * "~" * number *
                }
              if$
            }
            {
              pages empty$ not
                {
                  " " * volume * ": " *
                  pages *
                }
                {
                  " " * volume *
                }
              if$
            }
          if$
        }
        {
          number empty$ not
            {
              pages empty$ not
                {
                  bbl.comma * " " * bbl.number * "~" * number * ": " *
                  pages *
                }
                {
                  bbl.comma * " " * bbl.number * "~" * number *
                }
              if$
            }
            {
              pages empty$ not
                {
                  bbl.comma * " " * pages *
                }
                'skip$
              if$
            }
          if$
        }
      if$
    }
    {
      "journal" output.check
    }
  if$
}



FUNCTION {article.fields.issn.vol.num.pp}
{
  journal empty$ not
    {
      issue empty$ not
        { issue bbl.comma * " " *}
        { "" }
      if$
      volume empty$ not
        {
          number empty$ not
            {
              pages empty$ not
                {
                  bbl.comma * " " * bbl.volume * "~" * volume * "~" *
                  "(" * number * ")" * ": " *
                  pages *
                }
                {
                  bbl.comma * " " * bbl.volume * "~" * volume * bbl.comma *
                  " " * bbl.number * "~" * number *
                }
              if$
            }
            {
              pages empty$ not
                {
                  bbl.comma * " " * bbl.volume * "~" * volume * ":~" *
                  pages *
                }
                {
                  bbl.comma * " " * bbl.volume * "~" * volume *
                }
              if$
            }
          if$
        }
        {
          number empty$ not
            {
              pages empty$ not
                {
                  bbl.number * "~" * number * ": " *
                  pages *
                }
                {
                  bbl.number * "~" * number *
                }
              if$
            }
            {
              pages empty$ not
                {
                  pages *
                }
                'skip$
              if$
            }
          if$
        }
      if$
    }
    {
      "journal" output.check
    }
  if$
}



FUNCTION {proc.fields.org.publisher.address}
{
  organization empty$ not
    {
      publisher empty$ not
        {
          address empty$ not
            {
              organization add.period$
              address * ": " * publisher *
            }
            {
              organization add.period$
              publisher *
            }
          if$
        }
        {
          address empty$ not
            {
              organization
              bbl.comma * " " * address *
            }
            {
              organization
            }
          if$
        }
      if$
    }
    {
      publisher empty$ not
        {
          address empty$ not
            { address ": " * publisher *}
            { publisher }
          if$
        }
        {
          address empty$ not
            { address }
            { "" }
          if$
        }
      if$
    }
  if$
}



FUNCTION {inproc.fields.booktitle.volume.pages}
{
  booktitle empty$ not
    {
      volume empty$ not
        {
          volumes empty$ not
            {
              pages empty$ not
                {
                  field.booktitle " " *
                  volume * ": " * pages * add.period$
                  " " * volumes * "~" * bbl.volumes *
                }
                {
                  field.booktitle add.period$
                  " " * bbl.volume * "~" * volume * bbl.of * " " * volumes *
                }
              if$
            }
            {
              pages empty$ not
                {
                  field.booktitle " " *
                  volume * ": " * pages *
                }
                {
                  field.booktitle add.period$
                  " " * bbl.volume * "~" * volume *
                }
              if$
            }
          if$
        }
        {
          volumes empty$ not
            {
              pages empty$ not
                {
                  field.booktitle " " *
                  bbl.comma * " " * pages * add.period$
                  volumes * "~" * bbl.volumes
                }
                {
                  field.booktitle " " * add.period$
                  " " * volumes * "~" * bbl.volumes *
                }
              if$
            }
            {
              pages empty$ not
                {
                  field.booktitle " " *
                  bbl.comma * " " * pages *
                }
                {
                  field.booktitle
                }
              if$
            }
          if$
        }
      if$
    }
    {
      ""
    }
  if$
}



FUNCTION {inproc.fields.series.number}
{
  author empty$ not
    {
      translator empty$ not
        { #1 'field.series.emph := }
        {
          edition empty$ not
            { #1 }
            { #0 }
          if$
          impression empty$ not
            { #1 }
            { #0 }
          if$
          + 'field.series.emph :=
        }
      if$
    }
    {
      edition empty$ not
        { #1 }
        { #0 }
      if$
      impression empty$ not
        { #1 }
        { #0 }
      if$
      + 'field.series.emph :=
    }
  if$
  series empty$ not
    {
      field.series.emph #0 >
        {
          number empty$ not
            { series emphasize " " * number * }
            { series emphasize }
          if$
        }
        {
          number empty$ not
            { series " " * number * }
            { series }
          if$
        }
      if$
    }
    {
      number empty$ not
        { bbl.number capitalize "~" * number * }
        { "" }
      if$
    }
  if$
}



FUNCTION {inproc.field.crossref} { incoll.field.crossref }



FUNCTION {conf.fields.series.number.pages}
{
  series empty$ not
    {
      number empty$ not
        {
          pages empty$ not
            {
              series
              bbl.comma * " " * bbl.number * "~" * number *
              bbl.comma * " " * pages *
            }
            {
              series
              bbl.comma * " " * bbl.number * "~" * number *
            }
          if$
        }
        {
          pages empty$ not
            {
              series
              bbl.comma * " " * pages *
            }
            { series }
          if$
        }
      if$
    }
    { "" }
  if$
}



FUNCTION {conf.fields.org.publisher.address} { proc.fields.org.publisher.address }



FUNCTION {thesis.field.type}
{
  type duplicate$ empty$
    'pop$
    {
      swap$ pop$
      "t" change.case$ "type" bibinfo.check
    }
  if$
}



FUNCTION {thesis.fields.school.type.address}
{
  type empty$
    {
      type$ "mastersthesis" =
        { bbl.mthesis "t" change.case$ }
        {
          type$ "phdthesis" =
            { bbl.phdthesis "t" change.case$ }
            { bbl.thesis "t" change.case$ }
          if$
        }
      if$
      school empty$ not
        {
          address empty$ not
            { bbl.comma * " " * school * bbl.comma * " " * address * }
            { bbl.comma * " " * school * }
          if$
        }
        {
          address empty$ not
            { bbl.comma * address * }
            { add.period$ }
          if$
        }
      if$
    }
    {
      type "~" =
        {
          school empty$ not
            {
              address empty$ not
                { school bbl.comma * " " * address * }
                { school }
              if$
            }
            {
              address empty$ not
                { address }
                { "" }
              if$
            }
          if$
        }
        {
          type
          school empty$ not
            {
              address empty$ not
                { bbl.comma * " " * school * bbl.comma * " " * address * }
                { bbl.comma * " " * school * }
              if$
            }
            {
              address empty$ not
                { bbl.comma * address * }
                { add.period$ }
              if$
            }
          if$
        }
      if$
    }
  if$
}



FUNCTION {unpub.field.title}
{
  title empty$ not
    { title bbl.dquote }
    'skip$
  if$
}



FUNCTION {misc.field.title}
{
  title empty$ not
    { title }
    'skip$
  if$
}





% Functions to format entries based on type (compatible entries)

FUNCTION {book}
{ 
  begin.bibitem
  author empty$ not
    {
      field.author output.nonnull
      name.or.dash
      field.year "year" output.check
      new.block field.title.emph "title" output.check
      crossref missing$
        {
          new.sentence field.edition output
          new.sentence field.impression output
          new.sentence field.comment output
          new.sentence field.by output
          new.sentence field.translator.translatedby output
          new.sentence field.translateyear output
          new.sentence book.fields.volume.series.number output
          new.sentence field.collaboration output
          new.sentence field.commentator output
          new.sentence field.compiler.compiledby output
          new.sentence field.editor.editedby output
          new.sentence field.introduction output
          new.sentence field.preface output
          new.sentence field.afterword output
          new.sentence fields.publisher.address output
          new.sentence field.note output
          new.sentence field.isbn output
          new.sentence field.doi output
          new.sentence field.urldate output
          new.sentence field.url output
        }
        {
          new.block book.field.crossref output.nonnull
        }
      if$
    }
    { %%% if author field is empty, proceeds with compiler
      compiler empty$ not
        {
          field.compiler output.nonnull
          name.or.dash
          field.year "year" output.check
          new.block field.title.emph "title" output.check
          crossref missing$
            {
              new.sentence field.edition output
              new.sentence field.impression output
              new.sentence field.comment output
              new.sentence field.by output
              new.sentence field.translator.translatedby output
              new.sentence field.translateyear output
              new.sentence book.fields.volume.series.number output
              new.sentence field.collaboration output
              new.sentence field.commentator output
              new.sentence field.editor.editedby output
              new.sentence field.introduction output
              new.sentence field.preface output
              new.sentence field.afterword output
              new.sentence fields.publisher.address output
              new.sentence field.note output
              new.sentence field.isbn output
              new.sentence field.doi output
              new.sentence field.urldate output
              new.sentence field.url output
            }
            {
              new.block book.field.crossref output.nonnull
            }
          if$
        }
        { %%% if author, and compiler fields are empty, proceeds with editor
          editor empty$ not
            {
              field.editor output.nonnull
              name.or.dash
              field.year "year" output.check
              new.block field.title.emph "title" output.check
              crossref missing$
                {
                  new.sentence field.edition output
                  new.sentence field.impression output
                  new.sentence field.comment output
                  new.sentence field.by output
                  new.sentence field.translator.translatedby output
                  new.sentence field.translateyear output
                  new.sentence book.fields.volume.series.number output
                  new.sentence field.collaboration output
                  new.sentence field.commentator output
                  new.sentence field.introduction output
                  new.sentence field.preface output
                  new.sentence field.afterword output
                  new.sentence fields.publisher.address output
                  new.sentence field.note output
                  new.sentence field.isbn output
                  new.sentence field.doi output
                  new.sentence field.urldate output
                  new.sentence field.url output
                }
                {
                  new.block book.field.crossref output.nonnull
                }
              if$
            }
            { %%% if author, compiler, and editor fields are empty, proceeds with translator 
              translator empty$ not
                {
                  field.translator output.nonnull
                  name.or.dash
                  new.sentence field.translateyear output
                  new.block field.title.emph "title" output.check
                  new.sentence field.edition output
                  new.sentence field.impression output
                  new.sentence field.comment output
                  new.sentence field.by output
                  new.sentence field.year output
                  new.sentence book.fields.volume.series.number output
                  new.sentence field.collaboration output
                  new.sentence field.commentator output
                  new.sentence field.introduction output
                  new.sentence field.preface output
                  new.sentence field.afterword output
                  new.sentence fields.publisher.address output
                  new.sentence field.note output
                  new.sentence field.isbn output
                  new.sentence field.doi output
                  new.sentence field.urldate output
                  new.sentence field.url output
                }
                { %%% if author, compiler, editor, and translator fields are empty, proceeds with key
                  key empty$ not
                    {
                      field.title.emph "title" output.check
                      name.or.dash
                      field.year "year" output.check
                      crossref missing$
                        {
                          new.sentence field.edition output
                          new.sentence field.impression output
                          new.sentence field.comment output
                          new.sentence field.by output
                          new.sentence book.fields.volume.series.number output
                          new.sentence field.collaboration output
                          new.sentence field.commentator output
                          new.sentence field.introduction output
                          new.sentence field.preface output
                          new.sentence field.afterword output
                          new.sentence fields.publisher.address output
                          new.sentence field.note output
                          new.sentence field.isbn output
                          new.sentence field.doi output
                          new.sentence field.urldate output
                          new.sentence field.url output
                        }
                        {
                          new.block book.field.crossref output.nonnull
                        }
                      if$
                    }
                    {
                      "author, compiler, editor, translator, and key" output.check
                    }
                  if$
                }
              if$
            }
          if$
        }
      if$
    }
  if$
  end.bibitem
}



FUNCTION {incollection}
{ 
  begin.bibitem
  author empty$ not
    {
      field.author output.nonnull
      name.or.dash
      field.year "year" output.check
      new.block field.title.dqoute "title" output.check
      new.sentence field.comment output
      crossref missing$
        {
          new.sentence field.by output
          new.sentence incoll.fields.chapter.booktitle.volume.pages output
          new.sentence field.edition output
          new.sentence field.impression output
          new.sentence field.translator.translatedby output
          new.sentence field.translateyear output
          new.sentence incoll.fields.series.number output
          new.sentence field.compiler.compiledby output
          new.sentence field.editor.editedby output
          new.sentence fields.publisher.address output
          new.sentence field.note output
          new.sentence field.isbn output
          new.sentence field.doi output
          new.sentence field.urldate output
          new.sentence field.url output
        }
        {
          new.block incoll.field.crossref output.nonnull
        }
      if$
    }
    { %%% if author field is empty, proceeds with compiler
      compiler empty$ not
        {
          field.compiler output.nonnull
          name.or.dash
          field.year "year" output.check
          new.block field.title.dqoute "title" output.check
          new.sentence field.comment output
          crossref missing$
            {
              new.sentence field.by output
              new.sentence incoll.fields.chapter.booktitle.volume.pages output
              new.sentence field.edition output
              new.sentence field.impression output
              new.sentence field.translator.translatedby output
              new.sentence field.translateyear output
              new.sentence incoll.fields.series.number output
              new.sentence field.editor.editedby output
              new.sentence fields.publisher.address output
              new.sentence field.note output
              new.sentence field.isbn output
              new.sentence field.doi output
              new.sentence field.urldate output
              new.sentence field.url output
            }
            {
              new.block incoll.field.crossref output.nonnull
            }
          if$
        }
        { %%% if author, and compiler fields are empty, proceeds with editor
          editor empty$ not
            {
              field.editor output.nonnull
              name.or.dash
              field.year "year" output.check
              new.block field.title.dqoute "title" output.check
              new.sentence field.comment output
              crossref missing$
                {
                  new.sentence field.by output
                  new.sentence incoll.fields.chapter.booktitle.volume.pages output
                  new.sentence field.edition output
                  new.sentence field.impression output
                  new.sentence field.translator.translatedby output
                  new.sentence field.translateyear output
                  new.sentence incoll.fields.series.number output
                  new.sentence fields.publisher.address output
                  new.sentence field.note output
                  new.sentence field.isbn output
                  new.sentence field.doi output
                  new.sentence field.urldate output
                  new.sentence field.url output
                }
                {
                  new.block incoll.field.crossref output.nonnull
                }
              if$
            }
            { %%% if author, compiler, and editor fields are empty, proceeds with translator
              translator empty$ not
                {
                  field.translator output.nonnull
                  name.or.dash
                  new.sentence field.translateyear output
                  new.block field.title.dqoute "title" output.check
                  new.sentence field.comment output
                  new.sentence field.by output
                  new.sentence field.year output
                  new.sentence incoll.fields.chapter.booktitle.volume.pages output
                  new.sentence field.edition output
                  new.sentence field.impression output
                  new.sentence incoll.fields.series.number output
                  new.sentence field.compiler.compiledby output
                  new.sentence field.editor.editedby output
                  new.sentence fields.publisher.address output
                  new.sentence field.note output
                  new.sentence field.isbn output
                  new.sentence field.doi output
                  new.sentence field.urldate output
                  new.sentence field.url output
                }
                { %%% if author, compiler, editor, and translator fields are empty, proceeds with key 
                  key empty$ not
                    {
                      field.title.emph output
                      name.or.dash
                      field.year "year" output.check
                      new.sentence field.comment output
                      new.sentence field.by output
                      crossref missing$
                        {
                          new.sentence incoll.fields.chapter.booktitle.volume.pages output
                          new.sentence field.edition output
                          new.sentence field.impression output
                          new.sentence incoll.fields.series.number output
                          new.sentence field.compiler.compiledby output
                          new.sentence field.editor.editedby output
                          new.sentence fields.publisher.address output
                          new.sentence field.note output
                          new.sentence field.isbn output
                          new.sentence field.doi output
                          new.sentence field.urldate output
                          new.sentence field.url output
                        }
                        {
                          new.block incoll.field.crossref output.nonnull
                        }
                      if$
                    }
                    {
                      "author, compiler, editor, translator, and key" output.check
                    }
                  if$
                }
              if$
            }
          if$
        }
      if$
    }
  if$
  end.bibitem
}



FUNCTION {article}
{
  begin.bibitem
  author empty$ not
    {
      field.author output.nonnull
      name.or.dash
      field.year "year" output.check
      new.block field.title.dqoute output
      new.sentence field.comment output
      new.sentence field.by output
      crossref missing$
        {
          new.sentence field.translator.translatedby output
          new.sentence field.translateyear output
          new.sentence field.editor.editedby output
          new.sentence article.fields.jour.issn.vol.num.pp output
          new.sentence field.note output
          new.sentence field.issn output
          new.sentence field.doi output
          new.sentence field.urldate output
          new.sentence field.url output
        }
        {
          article.field.crossref output.nonnull
          field.pages output
        }
      if$
    }
    { %%% if author is empty, proceeds with editor
      editor empty$ not
        {
          field.editor output.nonnull
          name.or.dash
          field.year "year" output.check
          new.block field.title.dqoute output
          new.sentence field.comment output
          new.sentence field.by output
          crossref missing$
            {
              new.sentence field.translator.translatedby output
              new.sentence field.translateyear output
              new.sentence article.fields.jour.issn.vol.num.pp output
              new.sentence field.note output
              new.sentence field.issn output
              new.sentence field.doi output
              new.sentence field.urldate output
              new.sentence field.url output
            }
            {
              article.field.crossref output.nonnull
              field.pages output
            }
          if$
        }
        { %%% if author, and editor are empty, proceeds with translator
          translator empty$ not
            {
              field.translator output.nonnull
              name.or.dash
              new.sentence field.translateyear output
              new.block field.title.dqoute output
              new.sentence field.comment output
              new.sentence field.by output
              new.sentence field.year output
              crossref missing$
                {
                  new.sentence field.editor.editedby output
                  new.sentence article.fields.jour.issn.vol.num.pp output
                  new.sentence field.note output
                  new.sentence field.issn output
                  new.sentence field.doi output
                  new.sentence field.urldate output
                  new.sentence field.url output
                }
                {
                  article.field.crossref output.nonnull
                  field.pages output
                }
              if$
            }
            { %%% if author, editor, and translator are empty, proceeds with key
              key empty$ not
                {
                  article.field.journal output.nonnull
                  name.or.dash
                  field.year "year" output.check
                  new.block field.title.dqoute output
                  new.sentence field.comment output
                  new.sentence field.by output
                  crossref missing$
                    {
                      new.sentence field.editor.editedby output
                      new.sentence article.fields.issn.vol.num.pp output
                      new.sentence field.note output
                      new.sentence field.issn output
                      new.sentence field.doi output
                      new.sentence field.urldate output
                      new.sentence field.url output
                    }
                    {
                      article.field.crossref output.nonnull
                      field.pages output
                    }
                  if$
                }
                {
                  "author, translator, and key" output.check
                }
              if$
            }
          if$
        }
      if$
    }
  if$
  end.bibitem
}



FUNCTION {proceedings}
{
  begin.bibitem
  editor empty$ not
    {
      field.editor output.nonnull
      name.or.dash
      field.year "year" output.check
      new.block field.title.emph "title" output.check
      new.sentence field.edition output
      new.sentence field.impression output
      new.sentence field.translator.translatedby output
      new.sentence field.translateyear output
      new.sentence book.fields.volume.series.number output
      new.sentence field.compiler.compiledby output
      new.sentence proc.fields.org.publisher.address output
      new.sentence field.note output
      new.sentence field.isbn output
      new.sentence field.issn output
      new.sentence field.doi output
      new.sentence field.urldate output
      new.sentence field.url output
    }
    { %%% if editor field is empty, proceeds with compiler
      compiler empty$ not
        {
          field.compiler output.nonnull
          name.or.dash
          field.year "year" output.check
          new.block field.title.emph "title" output.check
          new.sentence field.edition output
          new.sentence field.impression output
          new.sentence field.translator.translatedby output
          new.sentence field.translateyear output
          new.sentence book.fields.volume.series.number output
          new.sentence proc.fields.org.publisher.address output
          new.sentence field.note output
          new.sentence field.isbn output
          new.sentence field.issn output
          new.sentence field.doi output
          new.sentence field.urldate output
          new.sentence field.url output
        }
        { %%% if editor, and compiler fields are empty, proceeds with translator
          translator empty$ not
            {
              field.translator output.nonnull
              name.or.dash
              new.sentence field.translateyear output
              new.block field.title.emph "title" output.check
              new.sentence field.edition output
              new.sentence field.impression output
              new.sentence book.fields.volume.series.number output
              new.sentence proc.fields.org.publisher.address output
              new.sentence field.note output
              new.sentence field.isbn output
              new.sentence field.issn output
              new.sentence field.doi output
              new.sentence field.urldate output
              new.sentence field.url output
            }
            {
              key empty$ not
                {
                  field.title.emph "title" output.check
                  name.or.dash
                  field.year "year" output.check
                  new.block field.edition output
                  new.sentence field.impression output
                  new.sentence book.fields.volume.series.number output
                  new.sentence proc.fields.org.publisher.address output
                  new.sentence field.note output
                  new.sentence field.isbn output
                  new.sentence field.issn output
                  new.sentence field.doi output
                  new.sentence field.urldate output
                  new.sentence field.url output
                }
                {
                  "editor, compiler, translator, and key" output.check
                }
              if$
            }
          if$
        }
      if$
    }
  if$
  end.bibitem
}



FUNCTION {inproceedings}
{
  begin.bibitem
  author empty$ not
    {
      field.author output.nonnull
      name.or.dash
      field.year "year" output.check
      new.block field.title.dqoute "title" output.check
      new.sentence field.by output
      crossref missing$
        {
          new.sentence inproc.fields.booktitle.volume.pages output
          new.sentence field.edition output
          new.sentence field.impression output
          new.sentence field.translator.translatedby output
          new.sentence field.translateyear output
          new.sentence inproc.fields.series.number output
          new.sentence field.compiler.compiledby output
          new.sentence field.editor.editedby output
          new.sentence fields.publisher.address output
          new.sentence field.note output
          new.sentence field.isbn output
          new.sentence field.issn output
          new.sentence field.doi output
          new.sentence field.urldate output
          new.sentence field.url output
        }
        {
          inproc.field.crossref output.nonnull
          field.pages output
        }
      if$
    }
    { %%% if author field is empty, proceeds with translator
      translator empty$ not
        {
          field.translator output.nonnull
          name.or.dash
          new.sentence field.translateyear output
          new.block field.title.dqoute "title" output.check
          new.sentence field.by output
          new.sentence field.year output
          crossref missing$
            {
              new.sentence inproc.fields.booktitle.volume.pages output
              new.sentence field.edition output
              new.sentence field.impression output
              new.sentence inproc.fields.series.number output
              new.sentence field.compiler.compiledby output
              new.sentence field.editor.editedby output
              new.sentence fields.publisher.address output
              new.sentence field.note output
              new.sentence field.isbn output
              new.sentence field.issn output
              new.sentence field.doi output
              new.sentence field.urldate output
              new.sentence field.url output
            }
            {
              inproc.field.crossref output.nonnull
              field.pages output
            }
          if$
        }
        { %%% if author, and translator fields are empty, proceeds with key
          key empty$ not
            {
              field.title.emph output
              name.or.dash
              field.year "year" output.check
              new.sentence field.by output
              crossref missing$
                {
                  new.sentence inproc.fields.booktitle.volume.pages output
                  new.sentence field.edition output
                  new.sentence field.impression output
                  new.sentence inproc.fields.series.number output
                  new.sentence field.compiler.compiledby output
                  new.sentence field.editor.editedby output
                  new.sentence fields.publisher.address output
                  new.sentence field.note output
                  new.sentence field.isbn output
                  new.sentence field.issn output
                  new.sentence field.doi output
                  new.sentence field.urldate output
                  new.sentence field.url output
                }
                {
                  inproc.field.crossref output.nonnull
                  field.pages output
                }
              if$
            }
            {
              "author, translator, and key" output.check
            }
          if$
        }
      if$
    }
  if$
  end.bibitem
}



FUNCTION {conference}
{
  begin.bibitem
  author empty$ not
    {
      field.author output.nonnull
      name.or.dash
      field.year "year" output.check
      new.block field.title.dqoute "title" output.check
      new.sentence field.by output
      crossref missing$
        {
          new.sentence field.translator.translatedby output
          new.sentence field.translateyear output
          new.sentence conf.fields.series.number.pages output
          new.sentence field.editor.editedby output
          new.sentence conf.fields.org.publisher.address output
          new.sentence field.note output
          new.sentence field.issn output
          new.sentence field.doi output
          new.sentence field.urldate output
          new.sentence field.url output
        }
        {
          inproc.field.crossref output.nonnull
          field.pages output
        }
      if$
    }
    { %%% if author is empty, proceeds with translator
      translator empty$ not
        {
          field.translator output.nonnull
          name.or.dash
          new.sentence field.translateyear output
          new.block field.title.dqoute "title" output.check
          new.sentence field.by output
          new.sentence field.year output
          crossref missing$
            {
              new.sentence conf.fields.series.number.pages output
              new.sentence field.editor.editedby output
              new.sentence conf.fields.org.publisher.address output
              new.sentence field.note output
              new.sentence field.issn output
              new.sentence field.doi output
              new.sentence field.urldate output
              new.sentence field.url output
            }
            {
              inproc.field.crossref output.nonnull
              field.pages output
            }
          if$
        }
        { %%% if author, and translator are empty, proceeds with key
          key empty$ not
            {
              field.title.emph output
              name.or.dash
              field.year "year" output.check
              new.sentence field.by output
              crossref missing$
                {
                  new.sentence conf.fields.series.number.pages output
                  new.sentence field.editor.editedby output
                  new.sentence conf.fields.org.publisher.address output
                  new.sentence field.note output
                  new.sentence field.issn output
                  new.sentence field.doi output
                  new.sentence field.urldate output
                  new.sentence field.url output
                }
                {
                  inproc.field.crossref output.nonnull
                  field.pages output
                }
              if$
            }
            {
              "author, translator, and key" output.check
            }
          if$
        }
      if$
    }
  if$
  end.bibitem
}



FUNCTION {thesis}
{
  begin.bibitem
  author empty$ not
    {
      field.author output.nonnull
      name.or.dash
      field.year "year" output.check
      new.block field.title.dqoute output
      new.sentence field.comment output
      new.sentence thesis.fields.school.type.address output
      new.sentence field.note output
      new.sentence field.doi output
      new.sentence field.urldate output
      new.sentence field.url output
    }
    { %%% if author is empty, proceeds with key
      key empty$ not
        {
          field.title.emph output
          name.or.dash
          field.year "year" output.check
          new.sentence field.comment output
          new.sentence field.note output
          new.sentence field.doi output
          new.sentence field.urldate output
          new.sentence field.url output
        }
        { "author, and key" output.check }
      if$
    }
  if$
  end.bibitem
}



FUNCTION {mastersthesis}  { thesis }



FUNCTION {phdthesis} { thesis }



FUNCTION {unpublished}
{
  begin.bibitem
  author empty$ not
    {
      field.author output.nonnull
      name.or.dash
      field.year "year" output.check
      new.block unpub.field.title output
      new.sentence field.comment output
      new.sentence field.by output
      new.sentence field.translator.translatedby output
      new.sentence field.translateyear output
      new.sentence field.howpublished output
      new.sentence field.note output
      new.sentence field.doi output
      new.sentence field.urldate output
      new.sentence field.url output
    }
    { %%% if author is empty, proceeds with translator
      translator empty$ not
        {
          field.translator output.nonnull
          name.or.dash
          new.sentence field.translateyear output
          new.block unpub.field.title output
          new.sentence field.comment output
          new.sentence field.by output
          new.sentence field.year output
          new.sentence field.translator.translatedby output
          new.sentence field.translateyear output
          new.sentence field.howpublished output
          new.sentence field.note output
          new.sentence field.doi output
          new.sentence field.urldate output
          new.sentence field.url output
        }
        { %%% if author, and translator are empty, proceeds with key
          key empty$ not
            {
              field.title.emph output
              name.or.dash
              field.year "year" output.check
              new.sentence field.comment output
              new.sentence field.by output
              new.sentence field.howpublished output
              new.sentence field.note output
              new.sentence field.doi output
              new.sentence field.urldate output
              new.sentence field.url output
            }
            { "author, translator, and key" output.check }
          if$
        }
      if$
    }
  if$
  end.bibitem
}



FUNCTION {misc}
{
  begin.bibitem
  author empty$ not
    {
      field.author output.nonnull
      name.or.dash
      field.year "year" output.check
      new.block misc.field.title output
      new.sentence field.by output
      new.sentence field.howpublished output
      new.sentence fields.publisher.address output
      new.sentence field.note output
      new.sentence field.doi output
      new.sentence field.urldate output
      new.sentence field.url output
    }
    { %%% if author is empty, proceeds with key
      key empty$ not
        {
          field.title.emph output
          name.or.dash
          field.year "year" output.check
          new.sentence field.by output
          new.sentence field.howpublished output
          new.sentence fields.publisher.address output
          new.sentence field.note output
          new.sentence field.doi output
          new.sentence field.urldate output
          new.sentence field.url output
        }
        { "author, and key" output.check }
      if$
    }
  if$
  end.bibitem
}





% Functions to format entries based on type (incompatible entries)

FUNCTION {booklet} % THIS ENTRY TYPE IS NOT COMPATIBLE WITH IRAN MANUAL OF STYLE
{
  begin.bibitem
  field.author output
  author format.key output
  name.or.dash
  field.year "year" output.check
  date.block
  field.title "title" output.check
  new.block
  howpublished "howpublished" bibinfo.check output
  address "address" bibinfo.check output
  field.isbn output
  field.doi output
  new.block
  field.note output
  field.eprint output
  field.url output
  end.bibitem
}



FUNCTION {inbook} % THIS ENTRY TYPE IS NOT COMPATIBLE WITH IRAN MANUAL OF STYLE
{
  begin.bibitem
  author empty$
    { field.editor "author and editor" output.check
      editor format.key output
      name.or.dash
    }
    { field.author output.nonnull
      name.or.dash
      crossref missing$
        { "author and editor" editor either.or.check }
        'skip$
      if$
    }
  if$
  field.year "year" output.check
  date.block
  field.btitle "title" output.check
  crossref missing$
    {
      field.bvolume output
      fields.chapter.pages output%"chapter and pages" output.check
      new.block
      fields.number.series output
      field.edition output
      new.sentence
      fields.publisher.address output
    }
    {
      fields.chapter.pages "chapter and pages" output.check
      new.block
      book.field.crossref output.nonnull
    }
  if$
  crossref missing$
    { field.isbn output }
    'skip$
  if$
  field.doi output
  new.block
  field.note output
  field.eprint output
  field.url output
  end.bibitem
}



FUNCTION {manual} % THIS ENTRY TYPE IS NOT COMPATIBLE WITH IRAN MANUAL OF STYLE
{
  begin.bibitem
  field.author output
  author format.key output
  name.or.dash
  field.year "year" output.check
  date.block
  field.btitle "title" output.check
  organization address new.block.checkb
  organization "organization" bibinfo.check output
  address "address" bibinfo.check output
  field.edition output
  field.doi output
  new.block
  field.note output
  field.eprint output
  field.url output
  end.bibitem
}



FUNCTION {techreport} % THIS ENTRY TYPE IS NOT COMPATIBLE WITH IRAN MANUAL OF STYLE
{
  begin.bibitem
  field.author "author" output.check
  author format.key output
  name.or.dash
  field.year "year" output.check
  date.block
  field.btitle
  "title" output.check
  new.block
  fields.tr.number output.nonnull
  institution "institution" bibinfo.warn output
  address "address" bibinfo.check output
  field.doi output
  new.block
  field.note output
  field.eprint output
  field.url output
  end.bibitem
}





% Function to format entry if the type is not recognized

FUNCTION {default.type} { misc }




















% Reading bibliography database (.bib) file

READ


% Function to generate a string that is suitable for sorting purposes

FUNCTION {sortify}
{
  purify$
  "l" change.case$
}



% Length of the short name label of the entry

INTEGERS { len }

FUNCTION {chop.word}
{
  's :=
  'len :=
  s #1 len substring$ =
    { s len #1 + global.max$ substring$ }
    's
  if$
}





% Functions for sorting purposes

FUNCTION {sort.format.names}
{
  's :=
  #1 'nameptr :=
  ""
  s num.names$ 'numnames :=
  numnames 'namesleft :=
  {
    namesleft #0 >
  }
  {
    s nameptr
    "{vv{ } }{ll{ }}{  ff{ }}{  jj{ }}" format.name$ 
    't :=
    nameptr #1 >
      {
        "   "  *
        namesleft #1 =
        t "others" =
        and
          { "zzzzz" 't := }
          'skip$
        if$
        t sortify *
      }
      {
        t sortify *
      }
    if$
    nameptr #1 + 'nameptr :=
    namesleft #1 - 'namesleft :=
  }
  while$
}



FUNCTION {sort.field.title}
{
  't :=
  "A " #2
    "An " #3
      "The " #4 t chop.word
    chop.word
  chop.word
  sortify
  #1 global.max$ substring$
}



FUNCTION {author.sort}
{
  author empty$
    {
      key empty$
        {
          "to sort, need author or key in " cite$ * warning$
          ""
        }
        { key sortify }
      if$
    }
    { author sort.format.names }
  if$
}




FUNCTION {author.editor.sort}
{
  author empty$
    {
      editor empty$
        {
          key empty$
            {
              "to sort, need author, editor, or key in " cite$ * warning$
              ""
            }
            { key sortify }
          if$
        }
        { editor sort.format.names }
      if$
    }
    { author sort.format.names }
  if$
}



FUNCTION {editor.sort}
{
  editor empty$
    {
      key empty$
        {
          "to sort, need editor or key in " cite$ * warning$
          ""
        }
        {
          key sortify
        }
      if$
    }
    {
      editor sort.format.names
    }
  if$
}



FUNCTION {book.sort}
{
  author empty$ not
    {
      author sort.format.names
    }
    {
      compiler empty$ not
        {
          compiler sort.format.names
        }
        {
          editor empty$ not
            {
              editor sort.format.names
            }
            {
              translator empty$ not
                {
                  translator sort.format.names
                }
                {
                  key empty$ not
                    {
                      key sortify
                    }
                    {
                      "to sort, need author, compiler, editor, translator, or key in " cite$ * warning$
                      ""
                    }
                  if$
                }
              if$
            }
          if$
        }
      if$
    }
  if$
}



FUNCTION {incoll.sort}
{
  author empty$ not
    {
      author sort.format.names
    }
    {
      compiler empty$ not
        {
          compiler sort.format.names
        }
        {
          editor empty$ not
            {
              editor sort.format.names
            }
            {
              translator empty$ not
                {
                  translator sort.format.names
                }
                {
                  key empty$ not
                    {
                      key sortify
                    }
                    {
                      "to sort, need author, compiler, editor, translator, or key in " cite$ * warning$
                      ""
                    }
                  if$
                }
              if$
            }
          if$
        }
      if$
    }
  if$
}



FUNCTION {article.sort}
{
  author empty$ not
    {
      author sort.format.names
    }
    {
      editor empty$ not
        {
          editor sort.format.names
        }
        {
          translator empty$ not
            {
              translator sort.format.names
            }
            {
              key empty$ not
                {
                  key sortify
                }
                {
                  "to sort, need author, editor, translator, or key in " cite$ * warning$
                  ""
                }
              if$
            }
          if$
        }
      if$
    }
  if$
}



FUNCTION {proc.sort}
{
  editor empty$ not
    { editor sort.format.names }
    {
      compiler empty$ not
        { compiler sort.format.names }
        {
          translator empty$ not
            { translator sort.format.names }
            {
              key empty$ not
                'key
                { cite$ #1 #3 substring$ }
              if$
            }
          if$
        }
      if$
    }
  if$
}



FUNCTION {inproc.sort}
{
  author empty$ not
    { author sort.format.names }
    {
      translator empty$ not
        { translator sort.format.names }
        {
          key empty$ not
            'key
            { cite$ #1 #3 substring$ }
          if$
        }
      if$
    }
  if$
}



FUNCTION {conf.sort}
{
  author empty$ not
    { author sort.format.names }
    {
      translator empty$ not
        { translator sort.format.names }
        {
          key empty$ not
            'key
            { cite$ #1 #3 substring$ }
          if$
        }
      if$
    }
  if$
}




INTEGERS { seq.num }

FUNCTION {init.seq}
{ #0 'seq.num := }

EXECUTE {init.seq}



FUNCTION {int.to.fix}
{
  "000000000" swap$ int.to.str$ *
  #-1 #10 substring$
}



FUNCTION {presort}
{
  calc.label
  label sortify
  "    "
  *
  seq.num #1 + 'seq.num :=
  seq.num  int.to.fix
  'sort.label :=
  sort.label
  *
  #1 entry.max$ substring$
  'sort.key$ :=
}





% Sort process

ITERATE {presort}

SORT



INTEGERS { number.label }

FUNCTION {initialize.longest.label}
{
  #0 'number.label :=
}

FUNCTION {forward.pass}
{
  number.label #1 + 'number.label :=
}

EXECUTE {initialize.longest.label}

ITERATE {forward.pass}



FUNCTION {bib.sort.order}
{
  sort.label
  'sort.key$ :=
}



ITERATE {bib.sort.order}

SORT




% Functions to create bibliography
FUNCTION {begin.bib}
{
  preamble$ empty$
    'skip$
    { preamble$ write$ newline$ }
  if$
  "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" write$
  newline$
  "% Generated by `iranlatin-unsrt.bst`." write$
  newline$
  "% This bibliography style is part of the `iran-bibtex` package." write$
  newline$
  "% Copyright (c) 2023-2024 Farshad Rasuli <farshad.rasuli@gmail.com>" write$
  newline$
  "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" write$
  newline$
  newline$
  newline$
  "\begin{thebibliography}{" number.label int.to.str$ * "}" * write$ 
  newline$
}



EXECUTE {begin.bib}

EXECUTE {init.state.consts}

ITERATE {call.type$}



FUNCTION {end.bib}
{
  newline$
  "\end{thebibliography}" write$
  newline$
}



EXECUTE {end.bib}



%%
%% End of file `iranlatin-unsrt.bst'.