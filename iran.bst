%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 
%% This file is “iran.bst”, v0.3.0 (2023/12/18)
%% generated with the DOCSTRIP utility, then modified to support
%% bilingual (English/Latin, and Persian) and be compatible with the
%% “Iran Manual of Style Citation Guide” (1st edn., 2016).
%% 
%% 
%% 
%%      Copyright (c) 2023 Farshad Rasuli <farshad.rasuli@gmail.com>
%% 
%% This file can be redistributed and/or modified under the terms
%% of the LaTeX Project Public License version 1.3c, or any later version.
%% The latest version of the License is at: latex-project.org/lppl.txt
%% 
%% This BibTeX bibliography style (bst) file is part of
%% the “iran-bibtex” package.
%% 
%% CTAN:           https://ctan.org/pkg/iran-bibtex
%% CTAN archive:   https://ctan.org/tex-archive/biblio/bibtex/contrib/iran-bibtex
%% Repository:     https://github.com/farshadrasuli/iran-bibtex
%% Bug tracker:	   https://github.com/farshadrasuli/iran-bibtex/issues
%% 
%% 
%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%------------------------------------------------------------------------------
% This bibliography style file is intended for texts in ENGLISH, and Persian.
% This is an author-year citation style bibliography. This style file is based
% on    natbib.sty   package by Patrick W. Daly.
% The form of the \bibitem entries is
%   \bibitem[Jones et al.(1990)]{key}...
%   \bibitem[Jones et al.(1990)Jones, Baker, and Smith]{key}...
% The essential feature is that the label (the part in brackets) consists
% of the author names, as they should appear in the citation, with the year
% in parentheses following. There must be no space before the opening
% parenthesis!
% 
% The \cite command functions as follows (\cite is equal to \citep command):
%   \citep{key}              =>   (Jones et al., 1990)
%   \citep*{key}             =>   (Jones, Baker, and Smith, 1990)
%   \citep[chap. 2]{key}     =>   (Jones et al., 1990, chap. 2)
%   \citep[e.g.][]{key}      =>   (e.g. Jones et al., 1990)
%   \citep[e.g.][p. 32]{key} =>   (e.g. Jones et al., 1990, p. 32)
%   \citet{key}              =>   Jones et al. (1990)
%   \citet*{key}             =>   Jones, Baker, and Smith (1990)
%   \citeauthor{key}         =>   Jones et al.
%   \citeauthor*{key}        =>   Jones, Baker, and Smith
%   \citeyear{key}           =>   1990
%------------------------------------------------------------------------------



ENTRY
{
  address
  afterword                  % the added field
  archive
  author
  authorfa                   % the added field
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
  extra.label
  sort.label
  short.list
}





% Basic boolean functions

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






% check for language of entry

FUNCTION {is.language.persian}
{
  language missing$
    {#0}
    { language "l" change.case$ "persian" = }
  if$
}





% Here are the language-specific definitions for explicit words.
% Each function has a name bbl.xxx where xxx is the English word.

FUNCTION {bbl.afterwordby}
{
  is.language.persian
    {"با پس‌گفتار"}
    {"afterword by"}
  if$
}

FUNCTION {bbl.and}
{ 
  is.language.persian
    {"و"}
    {"and"}
  if$
}

FUNCTION {bbl.annotator}
{
  is.language.persian
    {"حاشیه‌نویس"}
    {"ann."}
  if$
}

FUNCTION {bbl.annotatedby}
{
  is.language.persian
    {"با حاشیه‌ی"}
    {"annotated by"}
  if$
}

FUNCTION {bbl.andothers}
{ 
  is.language.persian
    {"و~دیگران"}
    {"and~others"}
  if$
}

FUNCTION {bbl.by}
{ 
  is.language.persian
    {"نوشته‌ی"}
    {"by"}
  if$
}

FUNCTION {bbl.chapter}
{
  is.language.persian
    {"فصل"}
    {"chapter"}
  if$
}

FUNCTION {bbl.collaboration}
{
  is.language.persian
    {"همکار"}
    {"coll."}
  if$
}

FUNCTION {bbl.comma}
{
  is.language.persian
    {"،"}
    {","}
  if$
}

FUNCTION {bbl.commentator}
{
  is.language.persian
    {"یادداشت‌نویس"}
    {"comm."}
  if$
}

FUNCTION {bbl.commentatedby}
{
  is.language.persian
    {"با یادداشت"}
    {"commentated by"}
  if$
}

FUNCTION {bbl.compiler}
{
  is.language.persian
    {"گردآورنده"}
    {"comp."}
  if$
}

FUNCTION {bbl.compilers}
{
  is.language.persian
    {"گردآورندگان"}
    {"comps."}
  if$
}

FUNCTION {bbl.compiledby}
{
  is.language.persian
    {"گردآوری"}
    {"compiled by"}
  if$
}

FUNCTION {bbl.doi}
{
  is.language.persian
    {"شناسه‌ی دیجیتال"}
    {"doi"}
  if$
}

FUNCTION {bbl.dquote}
{
  is.language.persian
    {"\faquote{" swap$ * add.period$ "}" *}
    {"\enquote{" swap$ * add.period$ "}" *}
  if$
}

FUNCTION {bbl.editor}
{
  is.language.persian
    {"ویراستار"}
    {"ed."}
  if$
}

FUNCTION {bbl.editors}
{
  is.language.persian
    {"ویراستاران"}
    {"eds."}
  if$
}

FUNCTION {bbl.edby}
{
  is.language.persian
    {"ویراسته‌ی"}
    {"edited by"}
  if$
}

FUNCTION {bbl.edition}
{
  is.language.persian
    {"ویرایش"}
    {"edn."}
  if$
}

FUNCTION {bbl.eidpp}
{
  is.language.persian
    {"صص"}
    {"pages"}
  if$
}

FUNCTION {bbl.etal}
{
  is.language.persian
    {"و~همکاران"}
    {"et~al."}
  if$
  
}

FUNCTION {bbl.forewordby}
{
  is.language.persian
    {"با پیش‌گفتار"}
    {"forword by"}
  if$
}

FUNCTION {bbl.impression}
{
  is.language.persian
    {"چاپ"}
    {"imp."}
  if$
}

FUNCTION {bbl.in}
{
  is.language.persian
    {"در"}
    {"in"}
  if$
}

FUNCTION {bbl.incollaborationwith}
{
  is.language.persian
    {"با همکاری"}
    {"in collaboration with"}
  if$
}

FUNCTION {bbl.introby}
{
  is.language.persian
    {"با مقدمه‌ی"}
    {"introduction by"}
  if$
}

FUNCTION {bbl.isbn}
{
  is.language.persian
    {"شابک"}
    {"isbn"}
  if$
}

FUNCTION {bbl.issn}
{
  is.language.persian
    {"شاپا"}
    {"issn"}
  if$
}

FUNCTION {bbl.thesis}
{
  is.language.persian
    {"پایان‌نامه"}
    {"Thesis"}
  if$
}

FUNCTION {bbl.mthesis}
{
  is.language.persian
    {"پایان‌نامه‌ی کارشناسی‌ارشد"}
    {"Master's thesis"}
  if$
}

FUNCTION {bbl.number}
{
  is.language.persian
    {"ش."}
    {"no."}
  if$
}

FUNCTION {bbl.nr}
{
  is.language.persian
    {"ش."}
    {"no."}
  if$
}

FUNCTION {bbl.of}
{
  is.language.persian
    {"از"}
    {"of"}
  if$
}

FUNCTION {bbl.page}
{
  is.language.persian
    {""}
    {""}
  if$
}

FUNCTION {bbl.pages}
{
  is.language.persian
    {""}
    {""}
  if$
}

FUNCTION {bbl.prefaceby}
{
  is.language.persian
    {"با پیش‌گفتار"}
    {"preface by"}
  if$
}

FUNCTION {bbl.phdthesis}
{
  is.language.persian
    {"رساله‌ی دکتری"}
    {"PhD dissertation"}
  if$
}

FUNCTION {bbl.retrieved}
{
  is.language.persian
    {"دسترسی در"}
    {"retrieved"}
  if$
}

FUNCTION {bbl.semicolon}
{
  is.language.persian
    {"؛"}
    {";"}
  if$
}

FUNCTION {bbl.techrep}
{
  is.language.persian
    {"گزارش"}
    {"tech. rep."}
  if$
}

FUNCTION {bbl.translator}
{
  is.language.persian
    {"مترجم"}
    {"trans."}
  if$
}

FUNCTION {bbl.translators}
{
  is.language.persian
    {"مترجمان"}
    {"trans."}
  if$
}

FUNCTION {bbl.translatedby}
{
  is.language.persian
    {"ترجمه‌ی"}
    {"translated by"}
  if$
}

FUNCTION {bbl.url}
{
  is.language.persian
    {"تارنما"}
    {"url"}
  if$
}

FUNCTION {bbl.volume}
{
  is.language.persian
    {"ج."}
    {"vol."}
  if$
}

FUNCTION {bbl.volumes}
{
  is.language.persian
    {"ج."}
    {"vols."}
  if$
}





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
            { add.period$ " " * write$ }
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





% Functions to control format of entry

FUNCTION {new.block}
{
  output.state before.all =
    'skip$
    { after.block 'output.state := }
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



FUNCTION {no.blank.or.punct}
{
  "\hspace{0pt}" * before.all 'output.state :=
}



FUNCTION {date.block}
{
  new.block
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



FUNCTION {new.block.checkb}
{
  empty$
  swap$ empty$
  and
    'skip$
    'new.block
  if$
}



FUNCTION {field.or.null}
{
  duplicate$ empty$
    { pop$ "" }
    'skip$
  if$
}



FUNCTION {emphasize}
{
  duplicate$ empty$
    { pop$ "" }
    { "{\it " swap$ * "}" * }
  if$
}



FUNCTION {tie.or.space.prefix}
{
  duplicate$ text.length$ #3 <
    { "~" }
    { " " }
  if$
  swap$
}



FUNCTION {capitalize}
{ "u" change.case$ "t" change.case$ }



FUNCTION {space.word}
{ " " swap$ * " " * }



FUNCTION {separate.by.space}
{ " " swap$ * " " * }





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





% Functions to format fields

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



FUNCTION {format.authors}
{ author "author" format.names }



FUNCTION {get.bbl.editor}
{
  editor num.names$ #1 >
    'bbl.editors
    'bbl.editor
  if$
}

FUNCTION {format.editors}
{
  editor "editor" format.names
  duplicate$ empty$
    'skip$
    {
      bbl.comma * " " * get.bbl.editor *
    }
  if$
}



FUNCTION {get.bbl.compiler}
{
  compiler num.names$ #1 >
    'bbl.compilers
    'bbl.compiler
  if$
}

FUNCTION {format.compilers}
{
  compiler "compiler" format.names
  duplicate$ empty$
    'skip$
    {
      bbl.comma * " " * get.bbl.compiler *
    }
  if$
}



FUNCTION {get.bbl.translator}
{
  translator num.names$ #1 >
    'bbl.translators
    'bbl.translator
  if$
}

FUNCTION {format.translators}
{
  translator "translator" format.names
  duplicate$ empty$
    'skip$
    {
      bbl.comma * " " * get.bbl.translator *
    }
  if$
}



FUNCTION {format.eprint}
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



FUNCTION {format.url}
{
  url duplicate$ empty$
    { pop$ "" }
    {
      bbl.url "u" change.case$ ": \url{" * swap$ * "}" *
    }
  if$
}



FUNCTION {format.urldate}
{
  urldate duplicate$ empty$
    { pop$ "" }
    { bbl.retrieved capitalize " " * swap$ * }
  if$
}



FUNCTION {format.isbn}
{
  isbn "isbn" bibinfo.check
  duplicate$ empty$
    'skip$
    {
      bbl.isbn "u" change.case$ ": " * swap$ *
    }
  if$
}



FUNCTION {format.issn}
{
  issn "issn" bibinfo.check
  duplicate$ empty$
    'skip$
      {
        bbl.issn "u" change.case$ ": " * swap$ *
      }
  if$
}

FUNCTION {format.doi}
{
  doi empty$
    { "" }
    {
      bbl.doi "u" change.case$ ":\doi{" * doi * "}" *
    }
  if$
}



FUNCTION {format.note}
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



FUNCTION {format.title}
{
  title
  duplicate$ empty$
    'skip$
    { bbl.dquote }
  if$
}



FUNCTION {format.full.names}
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
                numnames #2 >
                  { bbl.comma * }
                  'skip$
                if$
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


FUNCTION {author.editor.key.full}
{
  author empty$
    {
      editor empty$
        {
          key empty$
            { cite$ #1 #3 substring$ }
            'key
          if$
        }
        {
          editor format.full.names
        }
      if$
    }
    {
      author format.full.names
    }
  if$
}



FUNCTION {author.key.full}
{
  author empty$
    {
      key empty$
        { cite$ #1 #3 substring$ }
        'key
      if$
    }
    {
      author format.full.names
    }
  if$
}



FUNCTION {editor.key.full}
{
  editor empty$
    {
      key empty$
        { cite$ #1 #3 substring$ }
        'key
      if$
    }
    {
      editor format.full.names
    }
  if$
}



FUNCTION {make.full.names}
{
  type$ "book" =
  type$ "inbook" =
  or
    'author.editor.key.full
    {
      type$ "proceedings" =
        'editor.key.full
        'author.key.full
      if$
    }
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



FUNCTION {word.in}
{
  bbl.in capitalize " " *
}



FUNCTION {format.date}
{
  year "year" bibinfo.check
  duplicate$ empty$
    {
    }
    'skip$
  if$
  extra.label *
  before.all 'output.state :=
  after.sentence 'output.state :=
}



FUNCTION {format.comment}
{
  comment
}



FUNCTION {format.article.journal}
{
  journal remove.dots emphasize
}



FUNCTION {format.article.jour.iss.vol.num.pp}
{
  journal empty$ not
    {
      issue empty$ not
        { issue bbl.comma * " " *}
        { "" }
      if$
      format.article.journal *
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



FUNCTION {format.article.iss.vol.num.pp}
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



FUNCTION {format.btitle}
{
  title "title" bibinfo.check
  duplicate$ empty$
    'skip$
    { emphasize }
  if$
}



FUNCTION {format.title.in.books}
{
  title
  duplicate$ empty$
    'skip$
    { emphasize }
  if$
}



FUNCTION {either.or.check}
{
  empty$
    'pop$
    { "can't use both " swap$ * " fields in " * cite$ * warning$ }
  if$
}


FUNCTION {format.bvolume}
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


FUNCTION {format.number.series}
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



FUNCTION {format.book.volume.series.number}
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



FUNCTION {format.booktitle}
{
  booktitle "booktitle" bibinfo.check
  emphasize
}



FUNCTION {format.incoll.chapter.booktitle.volume.pages}
{
  booktitle empty$ not
    {
      chapter empty$ not
        {
          bbl.chapter capitalize "~" * chapter *
          " " * bbl.in * " " * format.booktitle *
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
          word.in format.booktitle *
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



INTEGERS { emph.series }
FUNCTION {format.incoll.series.number}
{
  author empty$ not
    {
      translator empty$ not
        { #1 'emph.series := }
        {
          edition empty$ not
            { #1 }
            { #0 }
          if$
          impression empty$ not
            { #1 }
            { #0 }
          if$
          + 'emph.series :=
        }
      if$
    }
    {
      compiler empty$ not
        {
          translator empty$ not
            { #1 'emph.series := }
            {
              edition empty$ not
                { #1 }
                { #0 }
              if$
              impression empty$ not
                { #1 }
                { #0 }
              if$
              + 'emph.series :=
            }
          if$
        }
        {
          editor empty$ not
            {
              translator empty$ not
                { #1 'emph.series := }
                {
                  edition empty$ not
                    { #1 }
                    { #0 }
                  if$
                  impression empty$ not
                    { #1 }
                    { #0 }
                  if$
                  + 'emph.series :=
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
              + 'emph.series :=
            }
          if$
        }
      if$
    }
  if$
  series empty$ not
    {
      emph.series #0 >
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



FUNCTION {format.inproc.booktitle.volume.pages}
{
  booktitle empty$ not
    {
      volume empty$ not
        {
          volumes empty$ not
            {
              pages empty$ not
                {
                  format.booktitle " " *
                  volume * ": " * pages * add.period$
                  " " * volumes * "~" * bbl.volumes *
                }
                {
                  format.booktitle add.period$
                  " " * bbl.volume * "~" * volume * bbl.of * " " * volumes *
                }
              if$
            }
            {
              pages empty$ not
                {
                  format.booktitle " " *
                  volume * ": " * pages *
                }
                {
                  format.booktitle add.period$
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
                  format.booktitle " " *
                  bbl.comma * " " * pages * add.period$
                  volumes * "~" * bbl.volumes
                }
                {
                  format.booktitle " " * add.period$
                  " " * volumes * "~" * bbl.volumes *
                }
              if$
            }
            {
              pages empty$ not
                {
                  format.booktitle " " *
                  bbl.comma * " " * pages *
                }
                {
                  format.booktitle
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



FUNCTION {format.inproc.series.number}
{
  author empty$ not
    {
      translator empty$ not
        { #1 'emph.series := }
        {
          edition empty$ not
            { #1 }
            { #0 }
          if$
          impression empty$ not
            { #1 }
            { #0 }
          if$
          + 'emph.series :=
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
      + 'emph.series :=
    }
  if$
  series empty$ not
    {
      emph.series #0 >
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



FUNCTION {format.conf.series.number.pages}
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



FUNCTION {format.conf.org.publisher.address}
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



FUNCTION {format.proc.org.publisher.address} { format.conf.org.publisher.address }



FUNCTION {format.thesis.school.type.address}
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



FUNCTION {format.edition}
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
      is.language.persian
        { bbl.edition " " * swap$ * }
        { " " * bbl.edition * }
      if$
    }
  if$
}



FUNCTION {format.impression}
{
  impression duplicate$ empty$ not
    {
      output.state mid.sentence =
        { "l" }
        { "t" }
      if$
      change.case$
      is.language.persian
        { bbl.impression " " * swap$ * }
        { " " * bbl.impression * }
      if$
    }
    'skip$
  if$
}



INTEGERS { multiresult }

FUNCTION {multi.page.check}
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



FUNCTION {format.pages}
{
  pages duplicate$ empty$
    'skip$
    {
      duplicate$ multi.page.check
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



FUNCTION {format.journal.pages}
{
  pages duplicate$ empty$ 'pop$
    {
      swap$ duplicate$ empty$
        {
          pop$ pop$ format.pages
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



FUNCTION {format.journal.eid}
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



FUNCTION {format.vol.num.pages}
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
    { format.journal.pages }
    { format.journal.eid }
  if$
}



FUNCTION {format.chapter.pages}
{
  chapter empty$
    'format.pages
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
        { bbl.comma * " " * format.pages * }
      if$
    }
  if$
}



FUNCTION {format.in.ed.booktitle}
{
  format.booktitle
  duplicate$ empty$
    'skip$
    {
      format.bvolume
      duplicate$ empty$
        'pop$
        { bbl.comma " " * swap$ * * }
      if$
      editor "editor" format.names.ed
      duplicate$ empty$
        'pop$
        {
          bbl.edby capitalize " " * swap$ *
          swap$
          add.period$ " " * swap$ *
        }
      if$
      word.in swap$ *
    }
  if$
}



FUNCTION {format.by}
{
  by empty$ not
    {
      by "by" format.names.ed
      bbl.by " " * swap$ *
    }
    { "" }
  if$
}



FUNCTION {format.incollaborationwith}
{
  collaboration empty$ not
    {
      collaboration "collaboration" format.names.ed
      bbl.incollaborationwith capitalize " " * swap$ *
    }
    { "" }
  if$
}



FUNCTION {format.commentatedby}
{
  commentator empty$ not
    {
      commentator "commentator" format.names.ed
      bbl.commentatedby capitalize " " * swap$ *
    }
    { "" }
  if$
}



FUNCTION {format.compiledby}
{
  compiler empty$ not
    {
      compiler "compiler" format.names.ed
      bbl.compiledby capitalize " " * swap$ *
    }
    { "" }
  if$
}



FUNCTION {format.edby}
{
  editor empty$ not
    {
      editor "editor" format.names.ed
      bbl.edby capitalize " " * swap$ *
    }
    { "" }
  if$
}



FUNCTION {format.translatedby}
{
  translator empty$ not
    {
      translator "translator" format.names.ed
      bbl.translatedby capitalize " " * swap$ *
    }
    { "" }
  if$
}


FUNCTION {format.translateyear}
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



FUNCTION {format.introby}
{
  introduction empty$ not
    {
      introduction "introduction" format.names.ed
      bbl.introby capitalize " " * swap$ *
    }
    { "" }
  if$
}



FUNCTION {format.prefaceby}
{
  preface empty$ not
    {
      preface "preface" format.names.ed
      bbl.prefaceby capitalize " " * swap$ *
    }
    { "" }
  if$
}



FUNCTION {format.afterwordby}
{
  afterword empty$ not
    {
      afterword "afterword" format.names.ed
      bbl.afterwordby capitalize " " * swap$ *
    }
    { "" }
  if$
}



FUNCTION {format.thesis.type}
{
  type duplicate$ empty$
    'pop$
    {
      swap$ pop$
      "t" change.case$ "type" bibinfo.check
    }
  if$
}



FUNCTION {format.tr.number}
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



FUNCTION {format.article.crossref}
{
  word.in
  " \cite{" * crossref * "}" *
}



FUNCTION {format.book.crossref}
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



FUNCTION {format.incoll.inproc.crossref}
{
  word.in " \cite{" * crossref * "}" *
}



FUNCTION {format.org.or.pub}
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



FUNCTION {format.publisher.address}
{
  publisher "publisher" bibinfo.check format.org.or.pub
}



FUNCTION {format.organization.address}
{
  organization "organization" bibinfo.check format.org.or.pub
}



FUNCTION {format.organization}
{
  organization "organization" bibinfo.check
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





% Functions to open, and close the bibitem

INTEGERS { is.authorfa.exist }

FUNCTION {begin.bibitem}
{
  #0 'is.authorfa.exist :=
  newline$
  is.language.persian
    {
      "\bibitem[{" write$
      label write$
      ")" make.full.names
      duplicate$ short.list =
        { pop$ }
        { * }
      if$
      "}]{" * write$
      cite$ write$
      "}" write$
      newline$
    }
    {
      "\begin{LTRbibitems}" write$
      "\resetlatinfont" write$
      newline$
      "\bibitem[{" write$
      label write$
      ")" make.full.names
      duplicate$ short.list =
        { pop$ }
        { * }
      if$
      "}]{" * write$
      cite$ write$
      "}" write$
      newline$
    }
  if$
  ""
  before.all 'output.state :=
}



FUNCTION {end.bibitem}
{
  add.period$ write$
  newline$
  is.language.persian
    'skip$
    {
      "\end{LTRbibitems}" write$
      newline$
    }
  if$
}





% Function to format entries

FUNCTION {article} % THIS ENTRY TYPE IS NOT COMPATIBLE WITH IRAN MANUAL OF STYLE
{
  begin.bibitem
  author empty$ not
    {
      format.authors output.nonnull
      name.or.dash
      format.date "year" output.check
      new.block format.title output
      new.sentence format.comment output
      new.sentence format.by output
      crossref missing$
        {
          new.sentence format.translatedby output
          new.sentence format.translateyear output
          new.sentence format.edby output
          new.sentence format.article.jour.iss.vol.num.pp output
          new.sentence format.note output
          new.sentence format.issn output
          new.sentence format.doi output
          new.sentence format.urldate output
          new.sentence format.url output
        }
        {
          format.article.crossref output.nonnull
          format.pages output
        }
      if$
    }
    { %%% if author is empty, proceeds with editor
      editor empty$ not
        {
          format.editors output.nonnull
          name.or.dash
          format.date "year" output.check
          new.block format.title output
          new.sentence format.comment output
          new.sentence format.by output
          crossref missing$
            {
              new.sentence format.translatedby output
              new.sentence format.translateyear output
              new.sentence format.article.jour.iss.vol.num.pp output
              new.sentence format.note output
              new.sentence format.issn output
              new.sentence format.doi output
              new.sentence format.urldate output
              new.sentence format.url output
            }
            {
              format.article.crossref output.nonnull
              format.pages output
            }
          if$
        }
        { %%% if author, and editor are empty, proceeds with translator
          translator empty$ not
            {
              format.translators output.nonnull
              name.or.dash
              new.sentence format.translateyear output
              new.block format.title output
              new.sentence format.comment output
              new.sentence format.by output
              new.sentence format.date output
              crossref missing$
                {
                  new.sentence format.edby output
                  new.sentence format.article.jour.iss.vol.num.pp output
                  new.sentence format.note output
                  new.sentence format.issn output
                  new.sentence format.doi output
                  new.sentence format.urldate output
                  new.sentence format.url output
                }
                {
                  format.article.crossref output.nonnull
                  format.pages output
                }
              if$
            }
            { %%% if author, editor, and translator are empty, proceeds with key
              key empty$ not
                {
                  format.article.journal output.nonnull
                  name.or.dash
                  format.date "year" output.check
                  new.block format.title output
                  new.sentence format.comment output
                  new.sentence format.by output
                  crossref missing$
                    {
                      new.sentence format.edby output
                      new.sentence format.article.iss.vol.num.pp output
                      new.sentence format.note output
                      new.sentence format.issn output
                      new.sentence format.doi output
                      new.sentence format.urldate output
                      new.sentence format.url output
                    }
                    {
                      format.article.crossref output.nonnull
                      format.pages output
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



FUNCTION {book}
{ 
  begin.bibitem
  author empty$ not
    {
      format.authors output.nonnull
      name.or.dash
      format.date "year" output.check
      new.block format.title.in.books "title" output.check
      crossref missing$
        {
          new.sentence format.edition output
          new.sentence format.impression output
          new.sentence format.comment output
          new.sentence format.by output
          new.sentence format.translatedby output
          new.sentence format.translateyear output
          new.sentence format.book.volume.series.number output
          new.sentence format.incollaborationwith output
          new.sentence format.commentatedby output
          new.sentence format.compiledby output
          new.sentence format.edby output
          new.sentence format.introby output
          new.sentence format.prefaceby output
          new.sentence format.afterwordby output
          new.sentence format.publisher.address output
          new.sentence format.note output
          new.sentence format.isbn output
          new.sentence format.doi output
          new.sentence format.urldate output
          new.sentence format.url output
        }
        {
          new.block format.book.crossref output.nonnull
        }
      if$
    }
    { %%% if author field is empty, proceeds with compiler
      compiler empty$ not
        {
          format.compilers output.nonnull
          name.or.dash
          format.date "year" output.check
          new.block format.title.in.books "title" output.check
          crossref missing$
            {
              new.sentence format.edition output
              new.sentence format.impression output
              new.sentence format.comment output
              new.sentence format.by output
              new.sentence format.translatedby output
              new.sentence format.translateyear output
              new.sentence format.book.volume.series.number output
              new.sentence format.incollaborationwith output
              new.sentence format.commentatedby output
              new.sentence format.edby output
              new.sentence format.introby output
              new.sentence format.prefaceby output
              new.sentence format.afterwordby output
              new.sentence format.publisher.address output
              new.sentence format.note output
              new.sentence format.isbn output
              new.sentence format.doi output
              new.sentence format.urldate output
              new.sentence format.url output
            }
            {
              new.block format.book.crossref output.nonnull
            }
          if$
        }
        { %%% if author, and compiler fields are empty, proceeds with editor
          editor empty$ not
            {
              format.editors output.nonnull
              name.or.dash
              format.date "year" output.check
              new.block format.title.in.books "title" output.check
              crossref missing$
                {
                  new.sentence format.edition output
                  new.sentence format.impression output
                  new.sentence format.comment output
                  new.sentence format.by output
                  new.sentence format.translatedby output
                  new.sentence format.translateyear output
                  new.sentence format.book.volume.series.number output
                  new.sentence format.incollaborationwith output
                  new.sentence format.commentatedby output
                  new.sentence format.introby output
                  new.sentence format.prefaceby output
                  new.sentence format.afterwordby output
                  new.sentence format.publisher.address output
                  new.sentence format.note output
                  new.sentence format.isbn output
                  new.sentence format.doi output
                  new.sentence format.urldate output
                  new.sentence format.url output
                }
                {
                  new.block format.book.crossref output.nonnull
                }
              if$
            }
            { %%% if author, compiler, and editor fields are empty, proceeds with translator 
              translator empty$ not
                {
                  format.translators output.nonnull
                  name.or.dash
                  new.sentence format.translateyear output
                  new.block format.title.in.books "title" output.check
                  new.sentence format.edition output
                  new.sentence format.impression output
                  new.sentence format.comment output
                  new.sentence format.by output
                  new.sentence format.date output
                  new.sentence format.book.volume.series.number output
                  new.sentence format.incollaborationwith output
                  new.sentence format.commentatedby output
                  new.sentence format.introby output
                  new.sentence format.prefaceby output
                  new.sentence format.afterwordby output
                  new.sentence format.publisher.address output
                  new.sentence format.note output
                  new.sentence format.isbn output
                  new.sentence format.doi output
                  new.sentence format.urldate output
                  new.sentence format.url output
                }
                { %%% if author, compiler, editor, and translator fields are empty, proceeds with key
                  key empty$ not
                    {
                      format.title.in.books "title" output.check
                      name.or.dash
                      format.date "year" output.check
                      crossref missing$
                        {
                          new.sentence format.edition output
                          new.sentence format.impression output
                          new.sentence format.comment output
                          new.sentence format.by output
                          new.sentence format.book.volume.series.number output
                          new.sentence format.incollaborationwith output
                          new.sentence format.commentatedby output
                          new.sentence format.introby output
                          new.sentence format.prefaceby output
                          new.sentence format.afterwordby output
                          new.sentence format.publisher.address output
                          new.sentence format.note output
                          new.sentence format.isbn output
                          new.sentence format.doi output
                          new.sentence format.urldate output
                          new.sentence format.url output
                        }
                        {
                          new.block format.book.crossref output.nonnull
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



FUNCTION {booklet} % THIS ENTRY TYPE IS NOT COMPATIBLE WITH IRAN MANUAL OF STYLE
{
  begin.bibitem
  format.authors output
  author format.key output
  name.or.dash
  format.date "year" output.check
  date.block
  format.title "title" output.check
  new.block
  howpublished "howpublished" bibinfo.check output
  address "address" bibinfo.check output
  format.isbn output
  format.doi output
  new.block
  format.note output
  format.eprint output
  format.url output
  end.bibitem
}



FUNCTION {inbook} % THIS ENTRY TYPE IS NOT COMPATIBLE WITH IRAN MANUAL OF STYLE
{
  begin.bibitem
  author empty$
    { format.editors "author and editor" output.check
      editor format.key output
      name.or.dash
    }
    { format.authors output.nonnull
      name.or.dash
      crossref missing$
        { "author and editor" editor either.or.check }
        'skip$
      if$
    }
  if$
  format.date "year" output.check
  date.block
  format.btitle "title" output.check
  crossref missing$
    {
      format.bvolume output
      format.chapter.pages output%"chapter and pages" output.check
      new.block
      format.number.series output
      format.edition output
      new.sentence
      format.publisher.address output
    }
    {
      format.chapter.pages "chapter and pages" output.check
      new.block
      format.book.crossref output.nonnull
    }
  if$
  crossref missing$
    { format.isbn output }
    'skip$
  if$
  format.doi output
  new.block
  format.note output
  format.eprint output
  format.url output
  end.bibitem
}



FUNCTION {incollection}
{ 
  begin.bibitem
  author empty$ not
    {
      format.authors output.nonnull
      name.or.dash
      format.date "year" output.check
      new.block format.title "title" output.check
      new.sentence format.comment output
      crossref missing$
        {
          new.sentence format.by output
          new.sentence format.incoll.chapter.booktitle.volume.pages output
          new.sentence format.edition output
          new.sentence format.impression output
          new.sentence format.translatedby output
          new.sentence format.translateyear output
          new.sentence format.incoll.series.number output
          new.sentence format.compiledby output
          new.sentence format.edby output
          new.sentence format.publisher.address output
          new.sentence format.note output
          new.sentence format.isbn output
          new.sentence format.doi output
          new.sentence format.urldate output
          new.sentence format.url output
        }
        {
          new.block format.incoll.inproc.crossref output.nonnull
        }
      if$
    }
    { %%% if author field is empty, proceeds with compiler
      compiler empty$ not
        {
          format.compilers output.nonnull
          name.or.dash
          format.date "year" output.check
          new.block format.title "title" output.check
          new.sentence format.comment output
          crossref missing$
            {
              new.sentence format.by output
              new.sentence format.incoll.chapter.booktitle.volume.pages output
              new.sentence format.edition output
              new.sentence format.impression output
              new.sentence format.translatedby output
              new.sentence format.translateyear output
              new.sentence format.incoll.series.number output
              new.sentence format.edby output
              new.sentence format.publisher.address output
              new.sentence format.note output
              new.sentence format.isbn output
              new.sentence format.doi output
              new.sentence format.urldate output
              new.sentence format.url output
            }
            {
              new.block format.incoll.inproc.crossref output.nonnull
            }
          if$
        }
        { %%% if author, and compiler fields are empty, proceeds with editor
          editor empty$ not
            {
              format.editors output.nonnull
              name.or.dash
              format.date "year" output.check
              new.block format.title "title" output.check
              new.sentence format.comment output
              crossref missing$
                {
                  new.sentence format.by output
                  new.sentence format.incoll.chapter.booktitle.volume.pages output
                  new.sentence format.edition output
                  new.sentence format.impression output
                  new.sentence format.translatedby output
                  new.sentence format.translateyear output
                  new.sentence format.incoll.series.number output
                  new.sentence format.publisher.address output
                  new.sentence format.note output
                  new.sentence format.isbn output
                  new.sentence format.doi output
                  new.sentence format.urldate output
                  new.sentence format.url output
                }
                {
                  new.block format.incoll.inproc.crossref output.nonnull
                }
              if$
            }
            { %%% if author, compiler, and editor fields are empty, proceeds with translator
              translator empty$ not
                {
                  format.translators output.nonnull
                  name.or.dash
                  new.sentence format.translateyear output
                  new.block format.title "title" output.check
                  new.sentence format.comment output
                  new.sentence format.by output
                  new.sentence format.date output
                  new.sentence format.incoll.chapter.booktitle.volume.pages output
                  new.sentence format.edition output
                  new.sentence format.impression output
                  new.sentence format.incoll.series.number output
                  new.sentence format.compiledby output
                  new.sentence format.edby output
                  new.sentence format.publisher.address output
                  new.sentence format.note output
                  new.sentence format.isbn output
                  new.sentence format.doi output
                  new.sentence format.urldate output
                  new.sentence format.url output
                }
                { %%% if author, compiler, editor, and translator fields are empty, proceeds with key 
                  key empty$ not
                    {
                      format.title.in.books output
                      name.or.dash
                      format.date "year" output.check
                      new.sentence format.comment output
                      new.sentence format.by output
                      crossref missing$
                        {
                          new.sentence format.incoll.chapter.booktitle.volume.pages output
                          new.sentence format.edition output
                          new.sentence format.impression output
                          new.sentence format.incoll.series.number output
                          new.sentence format.compiledby output
                          new.sentence format.edby output
                          new.sentence format.publisher.address output
                          new.sentence format.note output
                          new.sentence format.isbn output
                          new.sentence format.doi output
                          new.sentence format.urldate output
                          new.sentence format.url output
                        }
                        {
                          new.block format.incoll.inproc.crossref output.nonnull
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



FUNCTION {inproceedings}
{
  begin.bibitem
  author empty$ not
    {
      format.authors output.nonnull
      name.or.dash
      format.date "year" output.check
      new.block format.title "title" output.check
      new.sentence format.by output
      crossref missing$
        {
          new.sentence format.inproc.booktitle.volume.pages output
          new.sentence format.edition output
          new.sentence format.impression output
          new.sentence format.translatedby output
          new.sentence format.translateyear output
          new.sentence format.inproc.series.number output
          new.sentence format.compiledby output
          new.sentence format.edby output
          new.sentence format.publisher.address output
          new.sentence format.note output
          new.sentence format.isbn output
          new.sentence format.issn output
          new.sentence format.doi output
          new.sentence format.urldate output
          new.sentence format.url output
        }
        {
          format.incoll.inproc.crossref output.nonnull
          format.pages output
        }
      if$
    }
    { %%% if author field is empty, proceeds with translator
      translator empty$ not
        {
          format.translators output.nonnull
          name.or.dash
          new.sentence format.translateyear output
          new.block format.title "title" output.check
          new.sentence format.by output
          new.sentence format.date output
          crossref missing$
            {
              new.sentence format.inproc.booktitle.volume.pages output
              new.sentence format.edition output
              new.sentence format.impression output
              new.sentence format.inproc.series.number output
              new.sentence format.compiledby output
              new.sentence format.edby output
              new.sentence format.publisher.address output
              new.sentence format.note output
              new.sentence format.isbn output
              new.sentence format.issn output
              new.sentence format.doi output
              new.sentence format.urldate output
              new.sentence format.url output
            }
            {
              format.incoll.inproc.crossref output.nonnull
              format.pages output
            }
          if$
        }
        { %%% if author, and translator fields are empty, proceeds with key
          key empty$ not
            {
              format.title.in.books output
              name.or.dash
              format.date "year" output.check
              new.sentence format.by output
              crossref missing$
                {
                  new.sentence format.inproc.booktitle.volume.pages output
                  new.sentence format.edition output
                  new.sentence format.impression output
                  new.sentence format.inproc.series.number output
                  new.sentence format.compiledby output
                  new.sentence format.edby output
                  new.sentence format.publisher.address output
                  new.sentence format.note output
                  new.sentence format.isbn output
                  new.sentence format.issn output
                  new.sentence format.doi output
                  new.sentence format.urldate output
                  new.sentence format.url output
                }
                {
                  format.incoll.inproc.crossref output.nonnull
                  format.pages output
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
      format.authors output.nonnull
      name.or.dash
      format.date "year" output.check
      new.block format.title "title" output.check
      new.sentence format.by output
      crossref missing$
        {
          new.sentence format.translatedby output
          new.sentence format.translateyear output
          new.sentence format.conf.series.number.pages output
          new.sentence format.edby output
          new.sentence format.conf.org.publisher.address output
          new.sentence format.note output
          new.sentence format.issn output
          new.sentence format.doi output
          new.sentence format.urldate output
          new.sentence format.url output
        }
        {
          format.incoll.inproc.crossref output.nonnull
          format.pages output
        }
      if$
    }
    { %%% if author is empty, proceeds with translator
      translator empty$ not
        {
          format.translators output.nonnull
          name.or.dash
          new.sentence format.translateyear output
          new.block format.title "title" output.check
          new.sentence format.by output
          new.sentence format.date output
          crossref missing$
            {
              new.sentence format.conf.series.number.pages output
              new.sentence format.edby output
              new.sentence format.conf.org.publisher.address output
              new.sentence format.note output
              new.sentence format.issn output
              new.sentence format.doi output
              new.sentence format.urldate output
              new.sentence format.url output
            }
            {
              format.incoll.inproc.crossref output.nonnull
              format.pages output
            }
          if$
        }
        { %%% if author, and translator are empty, proceeds with key
          key empty$ not
            {
              format.title.in.books output
              name.or.dash
              format.date "year" output.check
              new.sentence format.by output
              crossref missing$
                {
                  new.sentence format.conf.series.number.pages output
                  new.sentence format.edby output
                  new.sentence format.conf.org.publisher.address output
                  new.sentence format.note output
                  new.sentence format.issn output
                  new.sentence format.doi output
                  new.sentence format.urldate output
                  new.sentence format.url output
                }
                {
                  format.incoll.inproc.crossref output.nonnull
                  format.pages output
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



FUNCTION {manual} % THIS ENTRY TYPE IS NOT COMPATIBLE WITH IRAN MANUAL OF STYLE
{
  begin.bibitem
  format.authors output
  author format.key output
  name.or.dash
  format.date "year" output.check
  date.block
  format.btitle "title" output.check
  organization address new.block.checkb
  organization "organization" bibinfo.check output
  address "address" bibinfo.check output
  format.edition output
  format.doi output
  new.block
  format.note output
  format.eprint output
  format.url output
  end.bibitem
}



FUNCTION {format.misc.title}
{
  title empty$ not
    { title }
    'skip$
  if$
}



FUNCTION {format.howpublished}
{
  howpublished
}



FUNCTION {misc}
{
  begin.bibitem
  author empty$ not
    {
      format.authors output.nonnull
      name.or.dash
      format.date "year" output.check
      new.block format.misc.title output
      new.sentence format.by output
      new.sentence format.howpublished output
      new.sentence format.publisher.address output
      new.sentence format.note output
      new.sentence format.doi output
      new.sentence format.urldate output
      new.sentence format.url output
    }
    { %%% if author is empty, proceeds with key
      key empty$ not
        {
          format.title.in.books output
          name.or.dash
          format.date "year" output.check
          new.sentence format.by output
          new.sentence format.howpublished output
          new.sentence format.publisher.address output
          new.sentence format.note output
          new.sentence format.doi output
          new.sentence format.urldate output
          new.sentence format.url output
        }
        { "author, and key" output.check }
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
      format.authors output.nonnull
      name.or.dash
      format.date "year" output.check
      new.block format.title output
      new.sentence format.comment output
      new.sentence format.thesis.school.type.address output
      new.sentence format.note output
      new.sentence format.doi output
      new.sentence format.urldate output
      new.sentence format.url output
    }
    { %%% if author is empty, proceeds with key
      key empty$ not
        {
          format.title.in.books output
          name.or.dash
          format.date "year" output.check
          new.sentence format.comment output
          new.sentence format.note output
          new.sentence format.doi output
          new.sentence format.urldate output
          new.sentence format.url output
        }
        { "author, and key" output.check }
      if$
    }
  if$
  end.bibitem
}



FUNCTION {mastersthesis}  { thesis }



FUNCTION {phdthesis} { thesis }



FUNCTION {proceedings}
{
  begin.bibitem
  editor empty$ not
    {
      format.editors output.nonnull
      name.or.dash
      format.date "year" output.check
      new.block format.title.in.books "title" output.check
      new.sentence format.edition output
      new.sentence format.impression output
      new.sentence format.translatedby output
      new.sentence format.translateyear output
      new.sentence format.book.volume.series.number output
      new.sentence format.compiledby output
      new.sentence format.proc.org.publisher.address output
      new.sentence format.note output
      new.sentence format.isbn output
      new.sentence format.issn output
      new.sentence format.doi output
      new.sentence format.urldate output
      new.sentence format.url output
    }
    { %%% if editor field is empty, proceeds with compiler
      compiler empty$ not
        {
          format.compilers output.nonnull
          name.or.dash
          format.date "year" output.check
          new.block format.title.in.books "title" output.check
          new.sentence format.edition output
          new.sentence format.impression output
          new.sentence format.translatedby output
          new.sentence format.translateyear output
          new.sentence format.book.volume.series.number output
          new.sentence format.proc.org.publisher.address output
          new.sentence format.note output
          new.sentence format.isbn output
          new.sentence format.issn output
          new.sentence format.doi output
          new.sentence format.urldate output
          new.sentence format.url output
        }
        { %%% if editor, and compiler fields are empty, proceeds with translator
          translator empty$ not
            {
              format.translators output.nonnull
              name.or.dash
              new.sentence format.translateyear output
              new.block format.title.in.books "title" output.check
              new.sentence format.edition output
              new.sentence format.impression output
              new.sentence format.book.volume.series.number output
              new.sentence format.proc.org.publisher.address output
              new.sentence format.note output
              new.sentence format.isbn output
              new.sentence format.issn output
              new.sentence format.doi output
              new.sentence format.urldate output
              new.sentence format.url output
            }
            {
              key empty$ not
                {
                  format.title.in.books "title" output.check
                  name.or.dash
                  format.date "year" output.check
                  new.block format.edition output
                  new.sentence format.impression output
                  new.sentence format.book.volume.series.number output
                  new.sentence format.proc.org.publisher.address output
                  new.sentence format.note output
                  new.sentence format.isbn output
                  new.sentence format.issn output
                  new.sentence format.doi output
                  new.sentence format.urldate output
                  new.sentence format.url output
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



FUNCTION {techreport} % THIS ENTRY TYPE IS NOT COMPATIBLE WITH IRAN MANUAL OF STYLE
{
  begin.bibitem
  format.authors "author" output.check
  author format.key output
  name.or.dash
  format.date "year" output.check
  date.block
  format.btitle
  "title" output.check
  new.block
  format.tr.number output.nonnull
  institution "institution" bibinfo.warn output
  address "address" bibinfo.check output
  format.doi output
  new.block
  format.note output
  format.eprint output
  format.url output
  end.bibitem
}



FUNCTION {format.unpub.title}
{
  title empty$ not
    { title bbl.dquote }
    'skip$
  if$
}



FUNCTION {unpublished}
{
  begin.bibitem
  author empty$ not
    {
      format.authors output.nonnull
      name.or.dash
      format.date "year" output.check
      new.block format.unpub.title output
      new.sentence format.comment output
      new.sentence format.by output
      new.sentence format.translatedby output
      new.sentence format.translateyear output
      new.sentence format.howpublished output
      new.sentence format.note output
      new.sentence format.doi output
      new.sentence format.urldate output
      new.sentence format.url output
    }
    { %%% if author is empty, proceeds with translator
      translator empty$ not
        {
          format.translators output.nonnull
          name.or.dash
          new.sentence format.translateyear output
          new.block format.unpub.title output
          new.sentence format.comment output
          new.sentence format.by output
          new.sentence format.date output
          new.sentence format.translatedby output
          new.sentence format.translateyear output
          new.sentence format.howpublished output
          new.sentence format.note output
          new.sentence format.doi output
          new.sentence format.urldate output
          new.sentence format.url output
        }
        { %%% if author, and translator are empty, proceeds with key
          key empty$ not
            {
              format.title.in.books output
              name.or.dash
              format.date "year" output.check
              new.sentence format.comment output
              new.sentence format.by output
              new.sentence format.howpublished output
              new.sentence format.note output
              new.sentence format.doi output
              new.sentence format.urldate output
              new.sentence format.url output
            }
            { "author, translator, and key" output.check }
          if$
        }
      if$
    }
  if$
  end.bibitem
}



FUNCTION {default.type} { misc }




















% Reading bibliography database (.bib) file

READ



FUNCTION {sortify}
{
  purify$
  "l" change.case$
}



% Length of the label name of the entry

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



% Function to create the label name of the entry

FUNCTION {label.and}
{
  is.language.persian
    { "و" }
    {
      authorfa missing$
        { "and" }
        { "و" }
      if$
    }
  if$
}

FUNCTION {label.etal}
{
  is.language.persian
    { "و~همکاران" }
    {
      authorfa missing$
        { "et~al." }
        { "و~همکاران" }
      if$
    }
  if$
}



FUNCTION {format.lab.names}
{
  's :=
  authorfa empty$
    {
      #0 'is.authorfa.exist :=
    }
    {
      authorfa 's  :=
      #1 'is.authorfa.exist :=
    }
  if$
  "" 't :=
  s #1 "{vv~}{ll}" format.name$
  s num.names$ #3 >
    {
      " " * label.etal *
    }
    {
      s num.names$ #2 <
        'skip$
        {
          s num.names$ #3 <
            {
              s #2 "{ff }{vv }{ll}{ jj}" format.name$ "others" =
                {
                  " " * label.etal *
                }
                {
                  bbl.comma * " " * label.and separate.by.space * s #2 "{vv~}{ll}" format.name$ *
                }
              if$
            }
            {
              s #3 "{ff }{vv }{ll}{ jj}" format.name$ "others" =
                {
                  " " * label.etal *
                }
                {
                  bbl.comma * " " * s #2 "{vv~}{ll}" format.name$ *
                  bbl.comma * " " * label.and separate.by.space * s #3 "{vv~}{ll}" format.name$ *
                }
              if$
            }
          if$
        }
      if$
    }
  if$
  #0 'is.authorfa.exist :=
}



FUNCTION {author.key.label}
{
  author empty$
    {
      key empty$
        { cite$ #1 #3 substring$ }
        'key
      if$
    }
    { author format.lab.names }
  if$
}

FUNCTION {author.editor.key.label}
{
  author empty$
    {
      editor empty$
        {
          key empty$
            { cite$ #1 #3 substring$ }
            'key
          if$
        }
        { editor format.lab.names }
      if$
    }
    { author format.lab.names }
  if$
}



FUNCTION {editor.key.label}
{
  editor empty$
    {
      key empty$
        { cite$ #1 #3 substring$ }
        'key
      if$
    }
    {
      editor format.lab.names
    }
  if$
}



FUNCTION {article.creator.label.order}
{
  author empty$ not
    { author format.lab.names }
    {
      editor empty$ not
        { editor format.lab.names }
        {
          translator empty$ not
            { translator format.lab.names }
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



FUNCTION {book.creator.label.order}
{
  author empty$ not
    { author format.lab.names }
    {
      compiler empty$ not
        { compiler format.lab.names }
        {
          editor empty$ not
            { editor format.lab.names }
            {
              translator empty$ not
                { translator format.lab.names }
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



FUNCTION {incoll.creator.label.order}
{
  author empty$ not
    { author format.lab.names }
    {
      compiler empty$ not
        { compiler format.lab.names }
        {
          editor empty$ not
            { editor format.lab.names }
            {
              translator empty$ not
                { translator format.lab.names }
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



FUNCTION {proc.creator.label.order}
{
  editor empty$ not
    { editor format.lab.names }
    {
      compiler empty$ not
        { compiler format.lab.names }
        {
          translator empty$ not
            { translator format.lab.names }
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



FUNCTION {conf.creator.label.order}
{
  author empty$ not
    { author format.lab.names }
    {
      translator empty$ not
        { translator format.lab.names }
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



FUNCTION {inproc.creator.label.order}
{
  author empty$ not
    { author format.lab.names }
    {
      translator empty$ not
        { translator format.lab.names }
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



FUNCTION {calc.short.authors}
{
  type$ "article" =
    'article.creator.label.order
    {
      type$ "book" =
        'book.creator.label.order
        {
          type$ "incollection" =
            'incoll.creator.label.order
            {
              type$ "proceedings" =
                'proc.creator.label.order
                {
                  type$ "conference" = 
                    'conf.creator.label.order
                    {
                      type$ "inproceedings" =
                        'inproc.creator.label.order
                        {
                          type$ "inbook" =
                            'author.editor.key.label
                            'author.key.label
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



FUNCTION {calc.label}
{
  calc.short.authors
  short.list
  "("
  *
  author empty$ not
    {
      year duplicate$ empty$
        { pop$ "" }
        'skip$
      if$
    }
    {
      compiler empty$ not
        {
          year duplicate$ empty$
            { pop$ "" }
            'skip$
          if$
        }
        {
          editor empty$ not
            {
              year duplicate$ empty$
                { pop$ "" }
                'skip$
              if$
            }
            {
              translator empty$ not
                {
                  translateyear duplicate$ empty$
                    { pop$ "" }
                    'skip$
                  if$
                }
                {
                  year duplicate$ empty$
                    { pop$ "" }
                    'skip$
                  if$
                }
              if$
            }
          if$
        }
      if$
    }
  if$
  *
  'label :=
}





% Functions for sort

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



FUNCTION {sort.format.title}
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



FUNCTION {article.creator.sort.order}
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



FUNCTION {book.creator.sort.order}
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



FUNCTION {incoll.creator.sort.order}
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



FUNCTION {proc.creator.sort.order}
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



FUNCTION {conf.creator.sort.order}
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



FUNCTION {inproc.creator.sort.order}
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



FUNCTION {presort}
{
  calc.label
  label sortify
  "    "
  *
  type$ "article" =
    'article.creator.sort.order
    {
      type$ "book" =
        'book.creator.sort.order
        {
          type$ "incollection" =
            'incoll.creator.sort.order
            {
              type$ "proceedings" =
                'proc.creator.sort.order
                {
                  type$ "conference" = 
                    'conf.creator.sort.order
                    {
                      type$ "inproceedings" =
                        'inproc.creator.sort.order
                        {
                          type$ "inbook" =
                            'author.editor.sort
                            'author.sort
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
  #1 entry.max$ substring$
  'sort.label :=
  sort.label
  *
  "    "
  *
  title field.or.null
  sort.format.title
  *
  #1 entry.max$ substring$
  'sort.key$ :=
}



ITERATE {presort}

SORT

STRINGS { last.label next.extra }

INTEGERS { last.extra.num last.extra.num.extended last.extra.num.blank number.label }

FUNCTION {initialize.extra.label.stuff}
{
  #0 int.to.chr$ 'last.label :=
  "" 'next.extra :=
  #0 'last.extra.num :=
  "a" chr.to.int$ #1 - 'last.extra.num.blank :=
  last.extra.num.blank 'last.extra.num.extended :=
  #0 'number.label :=
}



FUNCTION {forward.pass}
{
  last.label label =
    {
      last.extra.num #1 + 'last.extra.num :=
      last.extra.num "z" chr.to.int$ >
       {
        "a" chr.to.int$ 'last.extra.num :=
         last.extra.num.extended #1 + 'last.extra.num.extended :=
       }
       'skip$
      if$
      last.extra.num.extended last.extra.num.blank >
        {
          last.extra.num.extended int.to.chr$
          last.extra.num int.to.chr$
          * 'extra.label :=
        }
        {
          last.extra.num int.to.chr$ 'extra.label :=
        }
      if$
    }
    {
      "a" chr.to.int$ 'last.extra.num :=
      "" 'extra.label :=
      label 'last.label :=
    }
  if$
  number.label #1 + 'number.label :=
}



FUNCTION {reverse.pass}
{
  next.extra "b" =
    { "a" 'extra.label := }
    'skip$
  if$
  extra.label 'next.extra :=
  extra.label duplicate$ empty$
    'skip$
    {
      is.language.persian
        { "{\extrayearlabelfa{" swap$ * "}}" * }
        { "{\extrayearlabelen{" swap$ * "}}" * }
      if$
    }
  if$
  'extra.label :=
  label extra.label * 'label :=
}


EXECUTE {initialize.extra.label.stuff}

ITERATE {forward.pass}

REVERSE {reverse.pass}

FUNCTION {bib.sort.order}
{
  sort.label
  "    "
  *
  year field.or.null sortify
  *
  "    "
  *
  title field.or.null
  sort.format.title
  *
  #1 entry.max$ substring$
  'sort.key$ :=
}


ITERATE {bib.sort.order}

SORT


FUNCTION {begin.bib}
{
  preamble$ empty$
    'skip$
    { preamble$ write$ newline$ }
  if$
  "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" write$
  newline$
  "% generated by iran.bst," write$
  newline$
  "% this bibliography style is part of the `iran-bib` package." write$
  newline$
  "% copyright (c) 2023 Farshad Rasuli <farshad.rasuli@gmail.com>" write$
  newline$
  "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" write$
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
%% End of file `iran.bst'.